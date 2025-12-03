@interface SFPrivacyReportOverviewView
- (SFPrivacyReportOverviewView)initWithPrivacyReportDataProvider:(id)provider;
- (double)cellBackgroundCornerRadius;
- (double)interItemSpacing;
- (id)cellBackgroundColor;
- (void)setContextType:(int64_t)type;
- (void)setItemViews:(id)views;
- (void)setUsesInsetStyle:(BOOL)style;
- (void)updateItemBackgroundProperties;
@end

@implementation SFPrivacyReportOverviewView

- (SFPrivacyReportOverviewView)initWithPrivacyReportDataProvider:(id)provider
{
  v59[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v56.receiver = self;
  v56.super_class = SFPrivacyReportOverviewView;
  v6 = [(SFPrivacyReportGridView *)&v56 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportDataProvider, provider);
    [(SFPrivacyReportOverviewView *)v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [[SFPrivacyReportOverviewCellContentView alloc] initWithFrame:v8, v10, v12, v14];
    trackersPreventedFromProfilingView = v7->_trackersPreventedFromProfilingView;
    v7->_trackersPreventedFromProfilingView = v16;

    v18 = _WBSLocalizedString();
    titleLabel = [(SFPrivacyReportOverviewCellContentView *)v7->_trackersPreventedFromProfilingView titleLabel];
    [titleLabel setText:v18];

    v20 = MEMORY[0x1E696ADA0];
    v21 = MEMORY[0x1E696AD98];
    knownTrackers = [providerCopy knownTrackers];
    v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(knownTrackers, "count")}];
    v24 = [v20 localizedStringFromNumber:v23 numberStyle:1];
    subtitleLabel = [(SFPrivacyReportOverviewCellContentView *)v7->_trackersPreventedFromProfilingView subtitleLabel];
    [subtitleLabel setText:v24];

    v58 = @"TrackingPreventionDataExists";
    knownTrackers2 = [providerCopy knownTrackers];
    v27 = [knownTrackers2 count];
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
    titleLabel2 = [(SFPrivacyReportOverviewCellContentView *)v7->_websitesContainingTrackersView titleLabel];
    [titleLabel2 setText:v33];

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
    subtitleLabel2 = [(SFPrivacyReportOverviewCellContentView *)v7->_websitesContainingTrackersView subtitleLabel];
    [subtitleLabel2 setText:v38];

    v40 = [[SFPrivacyReportOverviewCellContentView alloc] initWithFrame:v9, v11, v13, v15];
    mostBlockedTrackerView = v7->_mostBlockedTrackerView;
    v7->_mostBlockedTrackerView = v40;

    v42 = _WBSLocalizedString();
    titleLabel3 = [(SFPrivacyReportOverviewCellContentView *)v7->_mostBlockedTrackerView titleLabel];
    [titleLabel3 setText:v42];

    mostSeenKnownTracker = [providerCopy mostSeenKnownTracker];
    firstParties = [mostSeenKnownTracker firstParties];
    v46 = [firstParties count];

    v47 = MEMORY[0x1E696AEC0];
    v48 = _WBSLocalizedString();
    [mostSeenKnownTracker domain];
    if (v46 == 1)
      v49 = {;
      firstParties2 = [v47 localizedStringWithFormat:v48, v49];
      subtitleLabel3 = [(SFPrivacyReportOverviewCellContentView *)v7->_mostBlockedTrackerView subtitleLabel];
      [subtitleLabel3 setText:firstParties2];
    }

    else
      v49 = {;
      firstParties2 = [mostSeenKnownTracker firstParties];
      subtitleLabel3 = [v47 localizedStringWithFormat:v48, v49, objc_msgSend(firstParties2, "count")];
      subtitleLabel4 = [(SFPrivacyReportOverviewCellContentView *)v7->_mostBlockedTrackerView subtitleLabel];
      [subtitleLabel4 setText:subtitleLabel3];
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

- (void)setContextType:(int64_t)type
{
  if (self->_contextType != type)
  {
    self->_contextType = type;
    [(SFPrivacyReportOverviewView *)self updateItemBackgroundProperties];
  }
}

- (void)setItemViews:(id)views
{
  v4.receiver = self;
  v4.super_class = SFPrivacyReportOverviewView;
  [(SFPrivacyReportGridView *)&v4 setItemViews:views];
  [(SFPrivacyReportOverviewView *)self updateItemBackgroundProperties];
}

- (void)updateItemBackgroundProperties
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemViews = [(SFPrivacyReportGridView *)self itemViews];
  v4 = [itemViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(itemViews);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        cellBackgroundColor = [(SFPrivacyReportOverviewView *)self cellBackgroundColor];
        [v8 setCellBackgroundColor:cellBackgroundColor];

        [(SFPrivacyReportOverviewView *)self cellBackgroundCornerRadius];
        [v8 setCellBackgroundCornerRadius:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [itemViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)setUsesInsetStyle:(BOOL)style
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_usesInsetStyle != style)
  {
    styleCopy = style;
    self->_usesInsetStyle = style;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    itemViews = [(SFPrivacyReportGridView *)self itemViews];
    v6 = [itemViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(itemViews);
          }

          [*(*(&v10 + 1) + 8 * i) setUsesInsetStyle:styleCopy];
        }

        v7 = [itemViews countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(SFPrivacyReportGridView *)self updateInterItemSpacing];
  }
}

@end
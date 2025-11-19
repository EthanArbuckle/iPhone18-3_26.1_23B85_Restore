@interface NTKWorldClockRichComplicationBaseCircularView
- (NTKWorldClockRichComplicationBaseCircularView)initWithFamily:(int64_t)a3;
- (void)_applyPaused;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFilterProvider:(id)a3;
- (void)setPaused:(BOOL)a3;
@end

@implementation NTKWorldClockRichComplicationBaseCircularView

- (NTKWorldClockRichComplicationBaseCircularView)initWithFamily:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = NTKWorldClockRichComplicationBaseCircularView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v13 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    v6 = [(CDRichComplicationView *)v4 device];
    if (a3 == 12)
    {
      v7 = NTKWorldClockGraphicCircularExtraLargeView;
    }

    else
    {
      if (a3 != 10)
      {
        p_super = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [(NTKWorldClockRichComplicationBaseCircularView *)a3 initWithFamily:?];
        }

        goto LABEL_9;
      }

      v7 = NTKWorldClockGraphicCircularView;
    }

    v8 = [[v7 alloc] initFullColorImageViewWithDevice:v6];
    p_super = &v5->_worldClockCircularView->super.super.super;
    v5->_worldClockCircularView = v8;
LABEL_9:

    [(NTKWorldClockRichComplicationBaseCircularView *)v5 _applyPaused];
    v10 = [(CDRichComplicationView *)v5 filterProvider];
    [(NTKWorldClockGraphicCircularView *)v5->_worldClockCircularView setFilterProvider:v10];

    v11 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v11 addSubview:v5->_worldClockCircularView];
  }

  return v5;
}

- (void)dealloc
{
  [(NTKWorldClockRichComplicationBaseCircularView *)self _stopClockUpdates];
  v3.receiver = self;
  v3.super_class = NTKWorldClockRichComplicationBaseCircularView;
  [(NTKWorldClockRichComplicationBaseCircularView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKWorldClockRichComplicationBaseCircularView;
  [(NTKRichComplicationCircularBaseView *)&v12 layoutSubviews];
  v3 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(NTKWorldClockGraphicCircularView *)self->_worldClockCircularView setFrame:v5, v7, v9, v11];
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v20 = [a3 metadata];
  v6 = [v20 objectForKeyedSubscript:@"NTKWorldClockComplicationShowIdealizedTimeKey"];
  v7 = [v6 BOOLValue];

  v8 = [v20 objectForKeyedSubscript:@"NTKWorldClockComplicationIsPrivacyKey"];
  v9 = [v8 BOOLValue];

  if (!v9)
  {
    v11 = [(CDRichComplicationView *)self timeTravelDate];

    if (v11)
    {
      v10 = [(CDRichComplicationView *)self timeTravelDate];
      if (!v10)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v10 = NTKIdealizedDate();
  if (!v10)
  {
LABEL_9:
    v12 = +[NTKDate faceDate];
    v13 = 0;
    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_7:
    v14 = NTKClockFaceLocalizedString(@"WORLDCLOCK_PRIVACY_REDACTION_TEXT", @"--");
    v15 = [off_27877BED8 transitInfoForDate:v12 location:{0.0, 0.0}];
    goto LABEL_11;
  }

LABEL_6:
  v12 = v10;
  v13 = v12;
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_10:
  v16 = [v20 objectForKeyedSubscript:@"NTKWorldClockComplicationCityKey"];
  v14 = NTKWorldClockCityAbbreviation(v16);
  v17 = [v16 alCity];
  v15 = [off_27877BED8 transitInfoForDate:v12 city:v17];

LABEL_11:
  v18 = [v20 objectForKeyedSubscript:@"NTKWorldClockComplicationTimeZoneKey"];
  v19 = [[NTKWorldClockGraphicCircularViewConfiguration alloc] initWithTimeZone:v18 labelText:v14 transitInfo:v15 inTritium:0 overrideDate:v13 isPrivacy:v9];
  [(NTKWorldClockGraphicCircularView *)self->_worldClockCircularView applyConfiguration:v19 animated:[(NTKWorldClockRichComplicationBaseCircularView *)self _shouldAnimateWithTemplateUpdateReason:a4]];
  [(NTKWorldClockRichComplicationBaseCircularView *)self _applyPaused];
}

- (void)setPaused:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NTKWorldClockRichComplicationBaseCircularView;
  [(CDRichComplicationView *)&v4 setPaused:a3];
  [(NTKWorldClockRichComplicationBaseCircularView *)self _applyPaused];
}

- (void)_applyPaused
{
  if ([(CDRichComplicationView *)self paused])
  {

    [(NTKWorldClockRichComplicationBaseCircularView *)self _stopClockUpdates];
  }

  else
  {

    [(NTKWorldClockRichComplicationBaseCircularView *)self _startClockUpdates];
  }
}

- (void)setFilterProvider:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKWorldClockRichComplicationBaseCircularView;
  v4 = a3;
  [(CDRichComplicationView *)&v5 setFilterProvider:v4];
  [(NTKWorldClockGraphicCircularView *)self->_worldClockCircularView setFilterProvider:v4, v5.receiver, v5.super_class];
}

- (void)initWithFamily:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NTKWorldClockRichComplicationBaseCircularView initWithFamily:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Unhandled complication family in %s world clock rich circular view creation: %ld", &v2, 0x16u);
}

@end
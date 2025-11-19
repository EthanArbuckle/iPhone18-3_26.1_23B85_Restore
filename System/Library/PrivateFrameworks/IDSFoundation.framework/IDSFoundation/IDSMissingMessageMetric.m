@interface IDSMissingMessageMetric
- (BOOL)_shouldReportMetricForExternal;
- (BOOL)_shouldReportReason;
- (BOOL)shouldReportMetric;
- (IDSMissingMessageMetric)initWithReason:(int64_t)a3 guid:(id)a4 service:(id)a5 additionalInformation:(id)a6;
- (NSDictionary)payload;
@end

@implementation IDSMissingMessageMetric

- (IDSMissingMessageMetric)initWithReason:(int64_t)a3 guid:(id)a4 service:(id)a5 additionalInformation:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = IDSMissingMessageMetric;
  v14 = [(IDSMissingMessageMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_reason = a3;
    objc_storeStrong(&v14->_guid, a4);
    objc_storeStrong(&v15->_service, a5);
    objc_storeStrong(&v15->_additionalInfo, a6);
  }

  return v15;
}

- (NSDictionary)payload
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(IDSMissingMessageMetric *)self _shouldReportReason])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reason];
    [v3 setObject:v4 forKey:@"fR"];
  }

  v5 = IDSGetUUIDData(self->_guid);
  if (v5)
  {
    [v3 setObject:v5 forKey:@"fU"];
  }

  additionalInfo = self->_additionalInfo;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A7CB08E8;
  v9[3] = &unk_1E77E00C8;
  v7 = v3;
  v10 = v7;
  [(NSDictionary *)additionalInfo enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

- (BOOL)shouldReportMetric
{
  v3 = +[IDSServerBag sharedInstance];
  v4 = [v3 objectForKey:@"ids-send-missing-metric-message"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  if ([(IDSMissingMessageMetric *)self _isInternal])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = [(IDSMissingMessageMetric *)self _shouldReportMetricForExternal]& v5;
  }

  return v6;
}

- (BOOL)_shouldReportReason
{
  if ([(IDSMissingMessageMetric *)self _isInternal])
  {
    return 1;
  }

  return [(IDSMissingMessageMetric *)self _shouldReportReasonForExternal];
}

- (BOOL)_shouldReportMetricForExternal
{
  v3 = +[IDSServerBag sharedInstance];
  v4 = [v3 objectForKey:@"ids-send-missing-metric-message-without-reason"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  reason = self->_reason;
  v7 = (reason - 702) > 0xA || ((1 << (reason + 66)) & 0x5A7) == 0;
  if (!v7 || reason == 801)
  {
    v8 = [(IDSMissingMessageMetric *)self _shouldReportReasonForExternal]| v5;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

@end
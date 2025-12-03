@interface IDSTapToRadarPushPayload
- (IDSTapToRadarPushPayload)initWithPushPayload:(id)payload;
@end

@implementation IDSTapToRadarPushPayload

- (IDSTapToRadarPushPayload)initWithPushPayload:(id)payload
{
  payloadCopy = payload;
  if (!payloadCopy)
  {
    sub_1009319F8(a2, self);
  }

  v49.receiver = self;
  v49.super_class = IDSTapToRadarPushPayload;
  v6 = [(IDSTapToRadarPushPayload *)&v49 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = sub_10001B8C4(v7, payloadCopy, @"e");
    errorCode = v6->_errorCode;
    v6->_errorCode = v8;

    v10 = objc_opt_class();
    v11 = sub_10001B8C4(v10, payloadCopy, @"s");
    serverErrorDetail = v6->_serverErrorDetail;
    v6->_serverErrorDetail = v11;

    v13 = objc_opt_class();
    v14 = sub_10001B8C4(v13, payloadCopy, @"m");
    promptMessage = v6->_promptMessage;
    v6->_promptMessage = v14;

    v16 = objc_opt_class();
    v17 = sub_10001B8C4(v16, payloadCopy, @"t");
    promptTitle = v6->_promptTitle;
    v6->_promptTitle = v17;

    v19 = objc_opt_class();
    v20 = sub_10001B8C4(v19, payloadCopy, @"rt");
    radarTitle = v6->_radarTitle;
    v6->_radarTitle = v20;

    v22 = objc_opt_class();
    v23 = sub_10001B8C4(v22, payloadCopy, @"rd");
    radarDescription = v6->_radarDescription;
    v6->_radarDescription = v23;

    v25 = objc_opt_class();
    v26 = sub_10001B8C4(v25, payloadCopy, @"cn");
    radarComponentName = v6->_radarComponentName;
    v6->_radarComponentName = v26;

    v28 = objc_opt_class();
    v29 = sub_10001B8C4(v28, payloadCopy, @"cv");
    radarComponentVersion = v6->_radarComponentVersion;
    v6->_radarComponentVersion = v29;

    v31 = objc_opt_class();
    stringValue = sub_10001B8C4(v31, payloadCopy, @"ci");
    v33 = stringValue;
    if (stringValue)
    {
      stringValue = [stringValue stringValue];
    }

    radarComponentId = v6->_radarComponentId;
    v6->_radarComponentId = stringValue;

    v35 = objc_opt_class();
    v36 = sub_10001B8C4(v35, payloadCopy, @"z");
    radarClassification = v6->_radarClassification;
    v6->_radarClassification = v36;

    v38 = objc_opt_class();
    v39 = sub_10001B8C4(v38, payloadCopy, @"r");
    radarReproducibility = v6->_radarReproducibility;
    v6->_radarReproducibility = v39;

    v41 = objc_opt_class();
    v42 = sub_10001B8C4(v41, payloadCopy, @"k");
    v43 = [v42 __imArrayByApplyingBlock:&stru_100BE4550];
    radarKeywords = v6->_radarKeywords;
    v6->_radarKeywords = v43;

    v45 = objc_opt_class();
    v46 = sub_10001B8C4(v45, payloadCopy, @"qp");
    radarQueryParameter = v6->_radarQueryParameter;
    v6->_radarQueryParameter = v46;
  }

  return v6;
}

@end
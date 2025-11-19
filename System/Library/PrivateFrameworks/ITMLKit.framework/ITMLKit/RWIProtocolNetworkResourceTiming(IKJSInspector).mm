@interface RWIProtocolNetworkResourceTiming(IKJSInspector)
+ (id)ik_networkResourceTimingFromData:()IKJSInspector referenceStartDate:;
@end

@implementation RWIProtocolNetworkResourceTiming(IKJSInspector)

+ (id)ik_networkResourceTimingFromData:()IKJSInspector referenceStartDate:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"IKJSNetworkRequestRecordStartTime"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v5 objectForKey:@"IKJSNetworkRequestRecordRedirectStartTime"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v5 objectForKey:@"IKJSNetworkRequestRecordRedirectEndTime"];
  [v13 doubleValue];
  v15 = v14;

  if (v15 > 0.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __103__RWIProtocolNetworkResourceTiming_IKJSInspector__ik_networkResourceTimingFromData_referenceStartDate___block_invoke;
  v44[3] = &unk_279799770;
  v45 = v6;
  v17 = v6;
  v18 = MEMORY[0x259C21BA0](v44);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __103__RWIProtocolNetworkResourceTiming_IKJSInspector__ik_networkResourceTimingFromData_referenceStartDate___block_invoke_2;
  v43[3] = &__block_descriptor_40_e8_d16__0d8l;
  *&v43[4] = v16;
  v19 = MEMORY[0x259C21BA0](v43);
  v42 = v18[2](v18, v9);
  v41 = v18[2](v18, v12);
  v20 = v18[2](v18, v15);
  v21 = v20;
  if (v15 <= 0.0)
  {
    v22 = [v5 objectForKey:@"_kCFNTimingDataFetchStart"];
    [v22 doubleValue];
    v21 = v19[2](v19);
  }

  v23 = [v5 objectForKey:@"_kCFNTimingDataDomainLookupStart"];
  [v23 doubleValue];
  v40 = v19[2](v19);

  v24 = [v5 objectForKey:@"_kCFNTimingDataDomainLookupEnd"];
  [v24 doubleValue];
  v39 = v19[2](v19);

  v25 = [v5 objectForKey:@"_kCFNTimingDataConnectStart"];
  [v25 doubleValue];
  v26 = v19[2](v19);

  v27 = [v5 objectForKey:@"_kCFNTimingDataSecureConnectionStart"];
  [v27 doubleValue];
  v28 = v19[2](v19);

  v29 = [v5 objectForKey:@"_kCFNTimingDataConnectEnd"];
  [v29 doubleValue];
  v30 = v19[2](v19);

  v31 = [v5 objectForKey:@"_kCFNTimingDataRequestStart"];
  [v31 doubleValue];
  v32 = v19[2](v19);

  v33 = [v5 objectForKey:@"_kCFNTimingDataResponseStart"];
  [v33 doubleValue];
  v34 = v19[2](v19);

  v35 = [v5 objectForKey:@"_kCFNTimingDataResponseEnd"];
  [v35 doubleValue];
  v36 = v19[2](v19);

  v37 = [MEMORY[0x277D7B768] safe_initWithStartTime:v42 redirectStart:v41 redirectEnd:v20 fetchStart:v21 domainLookupStart:v40 domainLookupEnd:v39 connectStart:v26 connectEnd:v30 secureConnectionStart:*&v28 requestStart:*&v32 responseStart:*&v34 responseEnd:*&v36];

  return v37;
}

@end
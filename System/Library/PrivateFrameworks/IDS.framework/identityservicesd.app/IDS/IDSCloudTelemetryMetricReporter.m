@interface IDSCloudTelemetryMetricReporter
- (IDSCloudTelemetryMetricReporter)init;
- (void)reportIncomingSendMetricWithDictionary:(id)a3 samplingID:(id)a4;
- (void)reportOutgoingSendMetric:(id)a3;
- (void)reportUpToDateMetricWithStorageRequestReceivedTime:(double)a3 storageMessagesProcessedTime:(double)a4;
- (void)wouldSampleOutgoingMetricWithSamplingID:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation IDSCloudTelemetryMetricReporter

- (IDSCloudTelemetryMetricReporter)init
{
  v3 = sub_100706B30(&qword_100CB3410);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  sub_1007C9A6C(14);
  v6 = type metadata accessor for CloudTelemetryMetricReporter();
  v12.receiver = self;
  v12.super_class = v6;
  v7 = [(IDSCloudTelemetryMetricReporter *)&v12 init];
  v8 = sub_100936DB8();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v10 = v7;
  sub_1007C2188(0, 0, v5, &unk_1009B35F0, v9);

  return v10;
}

- (void)wouldSampleOutgoingMetricWithSamplingID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100706B30(&qword_100CB3410);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_100936DB8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1009B35C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1009B35D0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_100724A14(0, 0, v9, &unk_1009B35E0, v14);
}

- (void)reportUpToDateMetricWithStorageRequestReceivedTime:(double)a3 storageMessagesProcessedTime:(double)a4
{
  v6 = self;
  sub_1007C2BB0(a3, a4);
}

- (void)reportOutgoingSendMetric:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007C3284(v4);
}

- (void)reportIncomingSendMetricWithDictionary:(id)a3 samplingID:(id)a4
{
  if (a4)
  {
    v6 = sub_100936B38();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_1007C3AB8(a3, v6, v8);
}

@end
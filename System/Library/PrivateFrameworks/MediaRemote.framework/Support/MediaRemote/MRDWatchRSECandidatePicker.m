@interface MRDWatchRSECandidatePicker
+ (id)proactiveRecommendedWithLocal:(id)a3 companion:(id)a4 userSelected:(id)a5 rse:(id)a6 selectionReason:(id *)a7;
- (MRDWatchRSECandidatePicker)init;
@end

@implementation MRDWatchRSECandidatePicker

+ (id)proactiveRecommendedWithLocal:(id)a3 companion:(id)a4 userSelected:(id)a5 rse:(id)a6 selectionReason:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  sub_10039FEB8(v11, a4, a5, a6, a7);
  v16 = v15;

  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (MRDWatchRSECandidatePicker)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WatchRSECandidatePicker();
  return [(MRDWatchRSECandidatePicker *)&v3 init];
}

@end
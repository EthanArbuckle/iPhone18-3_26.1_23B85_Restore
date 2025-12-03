@interface MRDWatchRSECandidatePicker
+ (id)proactiveRecommendedWithLocal:(id)local companion:(id)companion userSelected:(id)selected rse:(id)rse selectionReason:(id *)reason;
- (MRDWatchRSECandidatePicker)init;
@end

@implementation MRDWatchRSECandidatePicker

+ (id)proactiveRecommendedWithLocal:(id)local companion:(id)companion userSelected:(id)selected rse:(id)rse selectionReason:(id *)reason
{
  localCopy = local;
  companionCopy = companion;
  selectedCopy = selected;
  rseCopy = rse;
  sub_10039FEB8(localCopy, companion, selected, rse, reason);
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
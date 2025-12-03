@interface BKMatchPearlResultInfo
- (BKMatchPearlResultInfo)initWithServerIdentity:(id)identity details:(id)details device:(id)device;
@end

@implementation BKMatchPearlResultInfo

- (BKMatchPearlResultInfo)initWithServerIdentity:(id)identity details:(id)details device:(id)device
{
  detailsCopy = details;
  v15.receiver = self;
  v15.super_class = BKMatchPearlResultInfo;
  v9 = [(BKMatchResultInfo *)&v15 initWithServerIdentity:identity details:detailsCopy device:device];
  v10 = v9;
  if (v9)
  {
    v9->_feedback = 1;
    v9->_periocularMatchState = 0;
    if (detailsCopy)
    {
      v11 = [detailsCopy objectForKeyedSubscript:@"BKMatchDetailFaceDetectFeedback"];
      v12 = v11;
      if (v11)
      {
        v10->_feedback = __faceDetectFeedback([v11 integerValue]);
      }

      v13 = [detailsCopy objectForKeyedSubscript:@"BKMatchDetailPOMatchState"];

      if (v13)
      {
        v10->_periocularMatchState = [v13 integerValue] & 0x3F;
      }
    }
  }

  return v10;
}

@end
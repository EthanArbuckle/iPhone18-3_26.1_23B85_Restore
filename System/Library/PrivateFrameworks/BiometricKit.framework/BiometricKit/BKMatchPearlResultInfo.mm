@interface BKMatchPearlResultInfo
- (BKMatchPearlResultInfo)initWithServerIdentity:(id)a3 details:(id)a4 device:(id)a5;
@end

@implementation BKMatchPearlResultInfo

- (BKMatchPearlResultInfo)initWithServerIdentity:(id)a3 details:(id)a4 device:(id)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = BKMatchPearlResultInfo;
  v9 = [(BKMatchResultInfo *)&v15 initWithServerIdentity:a3 details:v8 device:a5];
  v10 = v9;
  if (v9)
  {
    v9->_feedback = 1;
    v9->_periocularMatchState = 0;
    if (v8)
    {
      v11 = [v8 objectForKeyedSubscript:@"BKMatchDetailFaceDetectFeedback"];
      v12 = v11;
      if (v11)
      {
        v10->_feedback = __faceDetectFeedback([v11 integerValue]);
      }

      v13 = [v8 objectForKeyedSubscript:@"BKMatchDetailPOMatchState"];

      if (v13)
      {
        v10->_periocularMatchState = [v13 integerValue] & 0x3F;
      }
    }
  }

  return v10;
}

@end
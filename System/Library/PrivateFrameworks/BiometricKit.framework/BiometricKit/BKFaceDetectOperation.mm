@interface BKFaceDetectOperation
- (BKFaceDetectOperation)initWithDevice:(id)a3;
@end

@implementation BKFaceDetectOperation

- (BKFaceDetectOperation)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKFaceDetectOperation;
  result = [(BKOperation *)&v4 initWithDevice:a3];
  if (result)
  {
    result->_mode = 2;
    result->_timeout = -1.0;
  }

  return result;
}

void __49__BKFaceDetectOperation_startBioOperation_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [BKErrorHelper errorWithOSStatus:a2];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

void __54__BKFaceDetectOperation_statusMessage_details_client___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [[BKFaceDetectStateInfo alloc] initWithPresenceState:*(a1 + 48) == 63 details:*(a1 + 40)];
  [v4 operation:v2 faceDetectStateChanged:v3];
}

void __54__BKFaceDetectOperation_statusMessage_details_client___block_invoke_263(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [BKMotionDetectStateInfo alloc];
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"BKStatusDetailMotionDetectMatrix"];
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"BKStatusDetailMotionDetectState"];
  v6 = [(BKMotionDetectStateInfo *)v3 initWithMotionMatrix:v4 motionDetectState:v5];
  [v7 operation:v2 motionDetectStateChanged:v6];
}

@end
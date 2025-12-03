@interface BWNodeStillImageReferenceFrameBracketedCaptureSequenceNumberMessage
+ (id)newMessageWithStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number;
@end

@implementation BWNodeStillImageReferenceFrameBracketedCaptureSequenceNumberMessage

+ (id)newMessageWithStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number
{
  result = [BWNodeStillImageReferenceFrameBracketedCaptureSequenceNumberMessage alloc];
  if (result)
  {
    v5.receiver = result;
    v5.super_class = BWNodeStillImageReferenceFrameBracketedCaptureSequenceNumberMessage;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      *(result + 1) = 0x600000001;
      *(result + 4) = number;
    }
  }

  return result;
}

@end
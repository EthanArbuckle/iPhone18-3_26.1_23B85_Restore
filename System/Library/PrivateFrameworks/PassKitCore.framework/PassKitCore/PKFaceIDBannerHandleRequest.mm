@interface PKFaceIDBannerHandleRequest
+ (id)create;
+ (id)createForRecordingType:(unsigned __int8)type;
+ (id)registerElementForRecording:(unsigned __int8)recording withCompletion:(id)completion;
- (PKFaceIDBannerHandleRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFaceIDBannerHandleRequest

+ (id)create
{
  result = [PKFaceIDBannerHandleRequest alloc];
  if (result)
  {
    v3.receiver = result;
    v3.super_class = PKBannerHandleRequest;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      *(result + 1) = 1;
    }
  }

  return result;
}

+ (id)createForRecordingType:(unsigned __int8)type
{
  if (type)
  {
    result = [PKFaceIDBannerHandleRequest alloc];
    if (result)
    {
      v4.receiver = result;
      v4.super_class = PKBannerHandleRequest;
      result = objc_msgSendSuper2(&v4, sel_init);
      if (result)
      {
        *(result + 1) = 1;
      }
    }

    *(result + 16) = type;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (PKFaceIDBannerHandleRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKFaceIDBannerHandleRequest;
  v5 = [(PKBannerHandleRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_recordingType = [coderCopy decodeInt32ForKey:@"recordingType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKFaceIDBannerHandleRequest;
  coderCopy = coder;
  [(PKBannerHandleRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_recordingType forKey:{@"recordingType", v5.receiver, v5.super_class}];
}

+ (id)registerElementForRecording:(unsigned __int8)recording withCompletion:(id)completion
{
  recordingCopy = recording;
  completionCopy = completion;
  v6 = [PKFaceIDBannerHandleRequest createForRecordingType:recordingCopy];
  v7 = [PKBannerHandle createHandleForRequest:v6 queue:MEMORY[0x1E69E96A0]];

  [v7 displayWithCompletion:completionCopy];

  return v7;
}

@end
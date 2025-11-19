@interface PKFaceIDBannerHandleRequest
+ (id)create;
+ (id)createForRecordingType:(unsigned __int8)a3;
+ (id)registerElementForRecording:(unsigned __int8)a3 withCompletion:(id)a4;
- (PKFaceIDBannerHandleRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

+ (id)createForRecordingType:(unsigned __int8)a3
{
  if (a3)
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

    *(result + 16) = a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (PKFaceIDBannerHandleRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKFaceIDBannerHandleRequest;
  v5 = [(PKBannerHandleRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_recordingType = [v4 decodeInt32ForKey:@"recordingType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKFaceIDBannerHandleRequest;
  v4 = a3;
  [(PKBannerHandleRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_recordingType forKey:{@"recordingType", v5.receiver, v5.super_class}];
}

+ (id)registerElementForRecording:(unsigned __int8)a3 withCompletion:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [PKFaceIDBannerHandleRequest createForRecordingType:v4];
  v7 = [PKBannerHandle createHandleForRequest:v6 queue:MEMORY[0x1E69E96A0]];

  [v7 displayWithCompletion:v5];

  return v7;
}

@end
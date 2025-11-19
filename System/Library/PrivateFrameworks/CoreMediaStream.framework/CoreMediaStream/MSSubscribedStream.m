@interface MSSubscribedStream
+ (id)subscribedStreamWithStreamID:(id)a3;
- (MSSubscribedStream)initWithCoder:(id)a3;
- (MSSubscribedStream)initWithStreamID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSSubscribedStream

- (MSSubscribedStream)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MSSubscribedStream;
  v5 = [(MSSubscribedStream *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"streamID"];
    streamID = v5->_streamID;
    v5->_streamID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ctag"];
    ctag = v5->_ctag;
    v5->_ctag = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  streamID = self->_streamID;
  v7 = v4;
  if (streamID)
  {
    [v4 encodeObject:streamID forKey:@"streamID"];
    v4 = v7;
  }

  ctag = self->_ctag;
  if (ctag)
  {
    [v7 encodeObject:ctag forKey:@"ctag"];
    v4 = v7;
  }
}

- (MSSubscribedStream)initWithStreamID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MSSubscribedStream;
  v6 = [(MSSubscribedStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_streamID, a3);
  }

  return v7;
}

+ (id)subscribedStreamWithStreamID:(id)a3
{
  v3 = a3;
  v4 = [[MSSubscribedStream alloc] initWithStreamID:v3];

  return v4;
}

@end
@interface MSSubscribedStream
+ (id)subscribedStreamWithStreamID:(id)d;
- (MSSubscribedStream)initWithCoder:(id)coder;
- (MSSubscribedStream)initWithStreamID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSSubscribedStream

- (MSSubscribedStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MSSubscribedStream;
  v5 = [(MSSubscribedStream *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"streamID"];
    streamID = v5->_streamID;
    v5->_streamID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ctag"];
    ctag = v5->_ctag;
    v5->_ctag = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  streamID = self->_streamID;
  v7 = coderCopy;
  if (streamID)
  {
    [coderCopy encodeObject:streamID forKey:@"streamID"];
    coderCopy = v7;
  }

  ctag = self->_ctag;
  if (ctag)
  {
    [v7 encodeObject:ctag forKey:@"ctag"];
    coderCopy = v7;
  }
}

- (MSSubscribedStream)initWithStreamID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MSSubscribedStream;
  v6 = [(MSSubscribedStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_streamID, d);
  }

  return v7;
}

+ (id)subscribedStreamWithStreamID:(id)d
{
  dCopy = d;
  v4 = [[MSSubscribedStream alloc] initWithStreamID:dCopy];

  return v4;
}

@end
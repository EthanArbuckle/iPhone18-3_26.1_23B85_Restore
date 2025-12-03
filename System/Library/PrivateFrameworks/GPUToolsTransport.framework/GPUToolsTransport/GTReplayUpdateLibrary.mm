@interface GTReplayUpdateLibrary
- (GTReplayUpdateLibrary)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayUpdateLibrary

- (GTReplayUpdateLibrary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = GTReplayUpdateLibrary;
  v5 = [(GTReplayRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shaderURL"];
    shaderURL = v5->_shaderURL;
    v5->_shaderURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shaderIR"];
    shaderIR = v5->_shaderIR;
    v5->_shaderIR = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shaderSource"];
    shaderSource = v5->_shaderSource;
    v5->_shaderSource = v10;

    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayUpdateLibrary;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_shaderURL forKey:@"shaderURL"];
  [coderCopy encodeObject:self->_shaderIR forKey:@"shaderIR"];
  [coderCopy encodeObject:self->_shaderSource forKey:@"shaderSource"];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
}

@end
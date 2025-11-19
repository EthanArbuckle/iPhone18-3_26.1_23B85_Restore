@interface GTReplayUpdateLibrary
- (GTReplayUpdateLibrary)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayUpdateLibrary

- (GTReplayUpdateLibrary)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GTReplayUpdateLibrary;
  v5 = [(GTReplayRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shaderURL"];
    shaderURL = v5->_shaderURL;
    v5->_shaderURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shaderIR"];
    shaderIR = v5->_shaderIR;
    v5->_shaderIR = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shaderSource"];
    shaderSource = v5->_shaderSource;
    v5->_shaderSource = v10;

    v5->_dispatchUID.uid = GTDispatchUIDDecode(v4, @"dispatchUID");
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayUpdateLibrary;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_shaderURL forKey:@"shaderURL"];
  [v4 encodeObject:self->_shaderIR forKey:@"shaderIR"];
  [v4 encodeObject:self->_shaderSource forKey:@"shaderSource"];
  GTDispatchUIDEncode(v4, self->_dispatchUID.uid, @"dispatchUID");
}

@end
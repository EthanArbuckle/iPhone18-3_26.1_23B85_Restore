@interface GTReplayUpdateResult
- (GTReplayUpdateResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayUpdateResult

- (GTReplayUpdateResult)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = GTReplayUpdateResult;
  v5 = [(GTReplayRequest *)&v16 initWithCoder:v4];
  if (v5)
  {
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"updatedPipelines"];
    updatePipelines = v5->_updatePipelines;
    v5->_updatePipelines = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v12;

    v5->_dispatchUID.uid = GTDispatchUIDDecode(v4, @"dispatchUID");
    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayUpdateResult;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_updatePipelines forKey:@"updatedPipelines"];
  [v4 encodeObject:self->_error forKey:@"error"];
  GTDispatchUIDEncode(v4, self->_dispatchUID.uid, @"dispatchUID");
}

@end
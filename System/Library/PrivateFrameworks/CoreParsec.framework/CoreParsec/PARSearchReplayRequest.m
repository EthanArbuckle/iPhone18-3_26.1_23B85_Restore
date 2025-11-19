@interface PARSearchReplayRequest
- (PARSearchReplayRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARSearchReplayRequest

- (PARSearchReplayRequest)initWithCoder:(id)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PARSearchReplayRequest;
  v5 = [(PARSearchRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replaySearchUrl"];
    replaySearchURL = v5->_replaySearchURL;
    v5->_replaySearchURL = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"replayHeaderItems"];
    replayHeaderItems = v5->_replayHeaderItems;
    v5->_replayHeaderItems = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PARSearchReplayRequest;
  v4 = a3;
  [(PARSearchRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_replaySearchURL forKey:{@"replaySearchUrl", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_replayHeaderItems forKey:@"replayHeaderItems"];
}

@end
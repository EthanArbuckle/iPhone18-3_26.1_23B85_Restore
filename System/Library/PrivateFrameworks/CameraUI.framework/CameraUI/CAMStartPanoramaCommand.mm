@interface CAMStartPanoramaCommand
- (CAMStartPanoramaCommand)initWithCoder:(id)coder;
- (CAMStartPanoramaCommand)initWithRequest:(id)request;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMStartPanoramaCommand

- (CAMStartPanoramaCommand)initWithRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = CAMStartPanoramaCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__request, request);
    v8 = v7;
  }

  return v7;
}

- (CAMStartPanoramaCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CAMStartPanoramaCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMPanoramaCaptureCommandRequest"];
    request = v5->__request;
    v5->__request = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _request = [(CAMStartPanoramaCommand *)self _request];
  [coderCopy encodeObject:_request forKey:@"CAMPanoramaCaptureCommandRequest"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CAMStartPanoramaCommand;
  v4 = [(CAMCaptureCommand *)&v9 copyWithZone:zone];
  _request = [(CAMStartPanoramaCommand *)self _request];
  v6 = [_request copy];
  v7 = v4[3];
  v4[3] = v6;

  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _request = [(CAMStartPanoramaCommand *)self _request];
  [contextCopy startPanoramaCaptureWithRequest:_request];
}

@end
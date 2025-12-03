@interface MPCModelPlaybackIntentTracklistToken
- (MPCModelPlaybackIntentTracklistToken)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPCModelPlaybackIntentTracklistToken

- (void)encodeWithCoder:(id)coder
{
  request = self->_request;
  coderCopy = coder;
  [coderCopy encodeObject:request forKey:@"MPCModelPlaybackIntentTracklistTokenRequest"];
  [coderCopy encodeObject:self->_startItemIdentifiers forKey:@"MPCModelPlaybackIntentTracklistTokenStartItemIdentifiers"];
}

- (MPCModelPlaybackIntentTracklistToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MPCModelPlaybackIntentTracklistToken *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelPlaybackIntentTracklistTokenRequest"];
    request = v5->_request;
    v5->_request = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelPlaybackIntentTracklistTokenStartItemIdentifiers"];
    startItemIdentifiers = v5->_startItemIdentifiers;
    v5->_startItemIdentifiers = v8;
  }

  return v5;
}

@end
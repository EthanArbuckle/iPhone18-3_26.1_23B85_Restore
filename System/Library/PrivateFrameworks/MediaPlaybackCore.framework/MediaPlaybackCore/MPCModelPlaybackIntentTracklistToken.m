@interface MPCModelPlaybackIntentTracklistToken
- (MPCModelPlaybackIntentTracklistToken)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPCModelPlaybackIntentTracklistToken

- (void)encodeWithCoder:(id)a3
{
  request = self->_request;
  v5 = a3;
  [v5 encodeObject:request forKey:@"MPCModelPlaybackIntentTracklistTokenRequest"];
  [v5 encodeObject:self->_startItemIdentifiers forKey:@"MPCModelPlaybackIntentTracklistTokenStartItemIdentifiers"];
}

- (MPCModelPlaybackIntentTracklistToken)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MPCModelPlaybackIntentTracklistToken *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelPlaybackIntentTracklistTokenRequest"];
    request = v5->_request;
    v5->_request = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelPlaybackIntentTracklistTokenStartItemIdentifiers"];
    startItemIdentifiers = v5->_startItemIdentifiers;
    v5->_startItemIdentifiers = v8;
  }

  return v5;
}

@end
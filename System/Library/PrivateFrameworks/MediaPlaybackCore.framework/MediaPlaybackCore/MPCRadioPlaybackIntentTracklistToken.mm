@interface MPCRadioPlaybackIntentTracklistToken
- (MPCRadioPlaybackIntentTracklistToken)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPCRadioPlaybackIntentTracklistToken

- (void)encodeWithCoder:(id)coder
{
  continueListeningStation = self->_continueListeningStation;
  coderCopy = coder;
  [coderCopy encodeBool:continueListeningStation forKey:@"continue-listening"];
  [coderCopy encodeObject:self->_radioStation forKey:@"station"];
  [coderCopy encodeObject:self->_radioStationURL forKey:@"url"];
}

- (MPCRadioPlaybackIntentTracklistToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MPCRadioPlaybackIntentTracklistToken *)self init];
  if (v5)
  {
    v5->_continueListeningStation = [coderCopy decodeBoolForKey:@"continue-listening"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"station"];
    radioStation = v5->_radioStation;
    v5->_radioStation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    radioStationURL = v5->_radioStationURL;
    v5->_radioStationURL = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_continueListeningStation)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p radioStation=%@ radioStationURL=%@ continueListening=%@", v4, self, self->_radioStation, self->_radioStationURL, v5];
}

@end
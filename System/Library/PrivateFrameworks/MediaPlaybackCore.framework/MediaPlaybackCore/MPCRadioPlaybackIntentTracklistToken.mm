@interface MPCRadioPlaybackIntentTracklistToken
- (MPCRadioPlaybackIntentTracklistToken)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPCRadioPlaybackIntentTracklistToken

- (void)encodeWithCoder:(id)a3
{
  continueListeningStation = self->_continueListeningStation;
  v5 = a3;
  [v5 encodeBool:continueListeningStation forKey:@"continue-listening"];
  [v5 encodeObject:self->_radioStation forKey:@"station"];
  [v5 encodeObject:self->_radioStationURL forKey:@"url"];
}

- (MPCRadioPlaybackIntentTracklistToken)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MPCRadioPlaybackIntentTracklistToken *)self init];
  if (v5)
  {
    v5->_continueListeningStation = [v4 decodeBoolForKey:@"continue-listening"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"station"];
    radioStation = v5->_radioStation;
    v5->_radioStation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
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
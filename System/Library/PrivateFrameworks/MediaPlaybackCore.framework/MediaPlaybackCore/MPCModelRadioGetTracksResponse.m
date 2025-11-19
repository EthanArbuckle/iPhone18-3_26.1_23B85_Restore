@interface MPCModelRadioGetTracksResponse
- (MPCModelRadioGetTracksResponse)initWithTracks:(id)a3 tracklistAction:(int64_t)a4;
- (id)description;
@end

@implementation MPCModelRadioGetTracksResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  tracklistAction = self->_tracklistAction;
  if (tracklistAction)
  {
    if (tracklistAction == 1)
    {
      v5 = @"Replace";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown-%ld", self->_tracklistAction];
    }
  }

  else
  {
    v5 = @"Append";
  }

  v6 = [(MPSectionedCollection *)self->_tracks totalItemCount];
  v7 = [(MPSectionedCollection *)self->_tracks allItems];
  v8 = [v3 stringWithFormat:@"<MPCModelRadioGetTracksResponse: %p action=%@> tracks.count=%ld tracks=%@", self, v5, v6, v7];

  return v8;
}

- (MPCModelRadioGetTracksResponse)initWithTracks:(id)a3 tracklistAction:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MPCModelRadioGetTracksResponse;
  v7 = [(MPCModelRadioGetTracksResponse *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_tracklistAction = a4;
    v9 = [v6 copy];
    tracks = v8->_tracks;
    v8->_tracks = v9;
  }

  return v8;
}

@end
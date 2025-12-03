@interface MPCModelRadioGetTracksResponse
- (MPCModelRadioGetTracksResponse)initWithTracks:(id)tracks tracklistAction:(int64_t)action;
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

  totalItemCount = [(MPSectionedCollection *)self->_tracks totalItemCount];
  allItems = [(MPSectionedCollection *)self->_tracks allItems];
  v8 = [v3 stringWithFormat:@"<MPCModelRadioGetTracksResponse: %p action=%@> tracks.count=%ld tracks=%@", self, v5, totalItemCount, allItems];

  return v8;
}

- (MPCModelRadioGetTracksResponse)initWithTracks:(id)tracks tracklistAction:(int64_t)action
{
  tracksCopy = tracks;
  v12.receiver = self;
  v12.super_class = MPCModelRadioGetTracksResponse;
  v7 = [(MPCModelRadioGetTracksResponse *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_tracklistAction = action;
    v9 = [tracksCopy copy];
    tracks = v8->_tracks;
    v8->_tracks = v9;
  }

  return v8;
}

@end
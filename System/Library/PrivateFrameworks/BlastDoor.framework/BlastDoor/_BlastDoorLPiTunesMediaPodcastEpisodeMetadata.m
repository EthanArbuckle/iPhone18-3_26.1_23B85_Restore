@interface _BlastDoorLPiTunesMediaPodcastEpisodeMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPiTunesMediaPodcastEpisodeMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPiTunesMediaPodcastEpisodeMetadata

- (_BlastDoorLPiTunesMediaPodcastEpisodeMetadata)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = _BlastDoorLPiTunesMediaPodcastEpisodeMetadata;
  v5 = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)&v27 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(v4, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(v4, @"episodeName");
    episodeName = v5->_episodeName;
    v5->_episodeName = v10;

    v12 = decodeStringForKey(v4, @"podcastName");
    podcastName = v5->_podcastName;
    v5->_podcastName = v12;

    v14 = decodeStringForKey(v4, @"artist");
    artist = v5->_artist;
    v5->_artist = v14;

    v16 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v16;

    v18 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v18;

    v20 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v20;

    v22 = decodeArrayOfStringsForKey(v4);
    offers = v5->_offers;
    v5->_offers = v22;

    v24 = v5;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  storeFrontIdentifier = self->_storeFrontIdentifier;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_episodeName forKey:@"episodeName"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_podcastName forKey:@"podcastName"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artist forKey:@"artist"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_releaseDate forKey:@"releaseDate"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [v5 _bd_lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPiTunesMediaPodcastEpisodeMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setEpisodeName:v7];

    v8 = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self podcastName];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setPodcastName:v8];

    v9 = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self artist];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setArtist:v9];

    v10 = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self releaseDate];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setReleaseDate:v10];

    v11 = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setArtwork:v11];

    v12 = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setArtworkMetadata:v12];

    v13 = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self offers];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setOffers:v13];

    v14 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _BlastDoorLPiTunesMediaPodcastEpisodeMetadata;
  if ([(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)&v18 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6[2];
      if (v7 | self->_storeFrontIdentifier && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_storeIdentifier) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_episodeName) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[5], v10 | self->_podcastName) && !objc_msgSend(v10, "isEqual:") || (v11 = v6[6], v11 | self->_artist) && !objc_msgSend(v11, "isEqual:") || (v12 = v6[7], v12 | self->_releaseDate) && !objc_msgSend(v12, "isEqual:") || (v13 = v6[8], v13 | self->_artwork) && !objc_msgSend(v13, "isEqual:") || (v14 = v6[9], v14 | self->_artworkMetadata) && !objc_msgSend(v14, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v15 = v6[10];
        if (v15 | self->_offers)
        {
          v5 = [v15 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

@end
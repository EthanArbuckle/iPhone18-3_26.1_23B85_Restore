@interface _BlastDoorLPiTunesMediaPodcastEpisodeMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPiTunesMediaPodcastEpisodeMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPiTunesMediaPodcastEpisodeMetadata

- (_BlastDoorLPiTunesMediaPodcastEpisodeMetadata)initWithCoder:(id)coder
{
  v28 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = _BlastDoorLPiTunesMediaPodcastEpisodeMetadata;
  v5 = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)&v27 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"episodeName");
    episodeName = v5->_episodeName;
    v5->_episodeName = v10;

    v12 = decodeStringForKey(coderCopy, @"podcastName");
    podcastName = v5->_podcastName;
    v5->_podcastName = v12;

    v14 = decodeStringForKey(coderCopy, @"artist");
    artist = v5->_artist;
    v5->_artist = v14;

    v16 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v16;

    v18 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v18;

    v20 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v20;

    v22 = decodeArrayOfStringsForKey(coderCopy);
    offers = v5->_offers;
    v5->_offers = v22;

    v24 = v5;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  storeFrontIdentifier = self->_storeFrontIdentifier;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_episodeName forKey:@"episodeName"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_podcastName forKey:@"podcastName"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artist forKey:@"artist"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_releaseDate forKey:@"releaseDate"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPiTunesMediaPodcastEpisodeMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setStoreIdentifier:storeIdentifier];

    episodeName = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setEpisodeName:episodeName];

    podcastName = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self podcastName];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setPodcastName:podcastName];

    artist = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self artist];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setArtist:artist];

    releaseDate = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self releaseDate];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setReleaseDate:releaseDate];

    artwork = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setArtworkMetadata:artworkMetadata];

    offers = [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)self offers];
    [(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)v4 setOffers:offers];

    v14 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v19 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = _BlastDoorLPiTunesMediaPodcastEpisodeMetadata;
  if ([(_BlastDoorLPiTunesMediaPodcastEpisodeMetadata *)&v18 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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
@interface MOEventMedia
- (MOEventMedia)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventMedia

- (void)encodeWithCoder:(id)coder
{
  mediaTitle = self->_mediaTitle;
  coderCopy = coder;
  [coderCopy encodeObject:mediaTitle forKey:@"mediaTitle"];
  [coderCopy encodeObject:self->_mediaAlbum forKey:@"mediaAlbum"];
  [coderCopy encodeObject:self->_mediaPlayerBundleId forKey:@"mediaPlayerBundleId"];
  [coderCopy encodeObject:self->_mediaProductId forKey:@"mediaProductId"];
  [coderCopy encodeObject:self->_mediaGenre forKey:@"mediaGenre"];
  [coderCopy encodeObject:self->_mediaType forKey:@"mediaType"];
  [coderCopy encodeObject:self->_mediaArtist forKey:@"mediaArtist"];
  [coderCopy encodeObject:self->_mediaRepetitions forKey:@"mediaRepetitions"];
  [coderCopy encodeObject:self->_mediaSumTimePlayed forKey:@"mediaSumTimePlayed"];
  [coderCopy encodeObject:self->_mediaPlaySessions forKey:@"mediaPlaySessions"];
  [coderCopy encodeObject:self->_mediaFirstPartyTimePlayedRatio forKey:@"firstPartyTimePlayedRatio"];
}

- (MOEventMedia)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = MOEventMedia;
  v5 = [(MOEventMedia *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaTitle"];
    mediaTitle = v5->_mediaTitle;
    v5->_mediaTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaAlbum"];
    mediaAlbum = v5->_mediaAlbum;
    v5->_mediaAlbum = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaPlayerBundleId"];
    mediaPlayerBundleId = v5->_mediaPlayerBundleId;
    v5->_mediaPlayerBundleId = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaProductId"];
    mediaProductId = v5->_mediaProductId;
    v5->_mediaProductId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaGenre"];
    mediaGenre = v5->_mediaGenre;
    v5->_mediaGenre = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    mediaType = v5->_mediaType;
    v5->_mediaType = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaArtist"];
    mediaArtist = v5->_mediaArtist;
    v5->_mediaArtist = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaRepetitions"];
    mediaRepetitions = v5->_mediaRepetitions;
    v5->_mediaRepetitions = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaSumTimePlayed"];
    mediaSumTimePlayed = v5->_mediaSumTimePlayed;
    v5->_mediaSumTimePlayed = v22;

    v24 = objc_autoreleasePoolPush();
    v25 = objc_alloc(MEMORY[0x277CBEB98]);
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v25 initWithObjects:{v26, v27, v28, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v24);
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"mediaPlaySessions"];
    mediaPlaySessions = v5->_mediaPlaySessions;
    v5->_mediaPlaySessions = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstPartyTimePlayedRatio"];
    mediaFirstPartyTimePlayedRatio = v5->_mediaFirstPartyTimePlayedRatio;
    v5->_mediaFirstPartyTimePlayedRatio = v32;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOEventMedia);
  objc_storeStrong(&v4->_mediaType, self->_mediaType);
  objc_storeStrong(&v4->_mediaAlbum, self->_mediaAlbum);
  objc_storeStrong(&v4->_mediaArtist, self->_mediaArtist);
  objc_storeStrong(&v4->_mediaPlayerBundleId, self->_mediaPlayerBundleId);
  objc_storeStrong(&v4->_mediaProductId, self->_mediaProductId);
  objc_storeStrong(&v4->_mediaGenre, self->_mediaGenre);
  objc_storeStrong(&v4->_mediaRepetitions, self->_mediaRepetitions);
  objc_storeStrong(&v4->_mediaSumTimePlayed, self->_mediaSumTimePlayed);
  objc_storeStrong(&v4->_mediaPlaySessions, self->_mediaPlaySessions);
  objc_storeStrong(&v4->_mediaTitle, self->_mediaTitle);
  objc_storeStrong(&v4->_mediaFirstPartyTimePlayedRatio, self->_mediaFirstPartyTimePlayedRatio);
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  mask = [(NSString *)self->_mediaTitle mask];
  mask2 = [(NSString *)self->_mediaAlbum mask];
  v6 = [v3 initWithFormat:@"mediaTitle, %@, mediaAlbum, %@, mediaPlayerBundleId, %@, mediaProductId, %@, mediaType, %@, mediaRepetitions, %@, mediaSumTimePlayed, %@, number of media play events, %lu", mask, mask2, self->_mediaPlayerBundleId, self->_mediaProductId, self->_mediaType, self->_mediaRepetitions, self->_mediaSumTimePlayed, -[NSArray count](self->_mediaPlaySessions, "count")];

  return v6;
}

@end
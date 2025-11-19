@interface MRPlaybackQueueRequest
+ (MRPlaybackQueueRequest)requestWithCurrentState:(id)a3 range:(_NSRange)a4;
+ (id)defaultPlaybackQueueRequestWithRange:(_NSRange)a3;
- (BOOL)containsNonDefaultAssets;
- (BOOL)exactMatch:(id)a3;
- (BOOL)hasRange;
- (BOOL)includeArtwork;
- (BOOL)includeRemoteArtwork;
- (BOOL)isEqual:(id)a3;
- (BOOL)match:(id)a3;
- (BOOL)rangeContainsNowPlayingItem;
- (BOOL)shouldRequestItem;
- (BOOL)shouldRequestItemNotConsideringMetadata;
- (MRPlaybackQueueRequest)initWithCoder:(id)a3;
- (MRPlaybackQueueRequest)initWithData:(id)a3;
- (MRPlaybackQueueRequest)initWithIdentifiers:(id)a3;
- (MRPlaybackQueueRequest)initWithIdentifiers:(id)a3 range:(_NSRange)a4;
- (MRPlaybackQueueRequest)initWithProtobuf:(id)a3;
- (MRPlaybackQueueRequest)initWithRange:(_NSRange)a3;
- (MRPlaybackQueueRequest)skeleton;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (_MRPlaybackQueueRequestProtobuf)protobuf;
- (_NSRange)range;
- (id)_buildRequestedPropertiesDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initFromTransactionName:(unint64_t)a3;
- (id)requestByRemovingArtwork;
- (void)encodeWithCoder:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)performRequestForDestination:(id)a3 completion:(id)a4;
- (void)setIncludeMetadata:(BOOL)a3;
@end

@implementation MRPlaybackQueueRequest

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(MRPlaybackQueueRequest *)self requestIdentifier];
  [v3 appendFormat:@"%@ ", v4];

  v5 = [(MRPlaybackQueueRequest *)self label];
  [v3 appendFormat:@"%@ ", v5];

  v6 = [(MRPlaybackQueueRequest *)self _buildRequestedPropertiesDescription];
  [v3 appendString:v6];

  v7 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    for (i = 0; ; ++i)
    {
      v10 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
      if ([v10 count] > 3)
      {

        if (i >= 3)
        {
LABEL_8:
          v15 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
          [v3 appendFormat:@"/IDs (%ld): %@", objc_msgSend(v15, "count"), v8];

          break;
        }
      }

      else
      {
        v11 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
        v12 = [v11 count];

        if (i >= v12)
        {
          goto LABEL_8;
        }
      }

      v13 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
      v14 = [v13 objectAtIndex:i];

      [v8 addObject:v14];
    }
  }

  v16 = [v3 copy];

  return v16;
}

- (id)_buildRequestedPropertiesDescription
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if ([v1 includeMetadata])
    {
      [v2 appendString:@"/M"];
    }

    if ([v1 includeInfo])
    {
      [v2 appendString:@"/I"];
    }

    if ([v1 includeLanguageOptions])
    {
      [v2 appendString:@"/L"];
    }

    if ([v1 includeLyrics])
    {
      [v2 appendString:@"/Ly"];
    }

    if ([v1 includeAlignments])
    {
      [v2 appendString:@"/Al"];
    }

    if ([v1 includeSections])
    {
      [v2 appendString:@"/S"];
    }

    if ([v1 includeAvailableArtworkFormats])
    {
      [v2 appendString:@"/AF"];
    }

    [v1 artworkWidth];
    if (v3 != 0.0)
    {
      [v1 artworkHeight];
      if (v4 != 0.0)
      {
        [v1 artworkWidth];
        v6 = v5;
        [v1 artworkHeight];
        [v2 appendFormat:@"/A%lfx%lf", v6, v7];
      }
    }

    v8 = [v1 requestedArtworkFormats];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [v1 requestedArtworkFormats];
      [v2 appendFormat:@"/FA[%ld]", objc_msgSend(v10, "count")];
    }

    v11 = [v1 requestedRemoteArtworkFormats];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [v1 requestedRemoteArtworkFormats];
      [v2 appendFormat:@"/RFA[%ld]", objc_msgSend(v13, "count")];
    }

    v14 = [v1 requestedAnimatedArtworkPreviewFrameFormats];
    v15 = [v14 count];

    if (v15)
    {
      v16 = [v1 requestedAnimatedArtworkPreviewFrameFormats];
      [v2 appendFormat:@"/AAPF[%ld]", objc_msgSend(v16, "count")];
    }

    v17 = [v1 requestedAnimatedArtworkAssetURLFormats];
    v18 = [v17 count];

    if (v18)
    {
      v19 = [v1 requestedAnimatedArtworkAssetURLFormats];
      [v2 appendFormat:@"/AAU[%ld]", objc_msgSend(v19, "count")];
    }

    if ([v1 hasLocation] && objc_msgSend(v1, "hasLength"))
    {
      [v2 appendFormat:@"/R[%ld:%ld]", objc_msgSend(v1, "location"), objc_msgSend(v1, "length")];
    }

    v1 = [v2 copy];
  }

  return v1;
}

- (BOOL)hasRange
{
  v3 = [(MRPlaybackQueueRequest *)self hasLocation];
  if (v3)
  {

    LOBYTE(v3) = [(MRPlaybackQueueRequest *)self hasLength];
  }

  return v3;
}

- (_NSRange)range
{
  v3 = [(MRPlaybackQueueRequest *)self location];
  v4 = [(MRPlaybackQueueRequest *)self length];
  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

- (NSData)data
{
  v2 = [(MRPlaybackQueueRequest *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (_MRPlaybackQueueRequestProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRPlaybackQueueRequestProtobuf);
  [(_MRPlaybackQueueRequestProtobuf *)v3 setLocation:[(MRPlaybackQueueRequest *)self location]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasLocation:[(MRPlaybackQueueRequest *)self hasLocation]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setLength:[(MRPlaybackQueueRequest *)self length]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasLength:[(MRPlaybackQueueRequest *)self hasLength]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setIncludeMetadata:[(MRPlaybackQueueRequest *)self includeMetadata]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasIncludeMetadata:[(MRPlaybackQueueRequest *)self hasIncludeMetadata]];
  [(MRPlaybackQueueRequest *)self artworkWidth];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setArtworkWidth:?];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasArtworkWidth:[(MRPlaybackQueueRequest *)self hasArtworkWidth]];
  [(MRPlaybackQueueRequest *)self artworkHeight];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setArtworkHeight:?];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasArtworkHeight:[(MRPlaybackQueueRequest *)self hasArtworkHeight]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setIncludeLyrics:[(MRPlaybackQueueRequest *)self includeLyrics]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasIncludeLyrics:[(MRPlaybackQueueRequest *)self hasIncludeLyrics]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setIncludeSections:[(MRPlaybackQueueRequest *)self includeSections]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasIncludeSections:[(MRPlaybackQueueRequest *)self hasIncludeSections]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setIncludeInfo:[(MRPlaybackQueueRequest *)self includeInfo]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasIncludeInfo:[(MRPlaybackQueueRequest *)self hasIncludeInfo]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setIncludeAlignments:[(MRPlaybackQueueRequest *)self includeAlignments]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasIncludeAlignments:[(MRPlaybackQueueRequest *)self hasIncludeAlignments]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setIncludeLanguageOptions:[(MRPlaybackQueueRequest *)self includeLanguageOptions]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasIncludeLanguageOptions:[(MRPlaybackQueueRequest *)self hasIncludeLanguageOptions]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setIncludeAvailableArtworkFormats:[(MRPlaybackQueueRequest *)self includeAvailableArtworkFormats]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasIncludeAvailableArtworkFormats:[(MRPlaybackQueueRequest *)self hasIncludeAvailableArtworkFormats]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setReturnContentItemAssetsInUserCompletion:1];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasReturnContentItemAssetsInUserCompletion:1];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setIsLegacyNowPlayingInfoRequest:[(MRPlaybackQueueRequest *)self isLegacyNowPlayingInfoRequest]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasIsLegacyNowPlayingInfoRequest:[(MRPlaybackQueueRequest *)self isLegacyNowPlayingInfoRequest]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setCachingPolicy:[(MRPlaybackQueueRequest *)self cachingPolicy]];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setHasCachingPolicy:[(MRPlaybackQueueRequest *)self cachingPolicy]!= 0];
  v4 = [(MRPlaybackQueueRequest *)self playerPath];
  v5 = [v4 protobuf];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setPlayerPath:v5];

  v6 = [(MRPlaybackQueueRequest *)self requestIdentifier];
  v7 = [v6 copy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setRequestID:v7];

  v8 = [(MRPlaybackQueueRequest *)self label];
  v9 = [v8 copy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setLabel:v9];

  v10 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
  v11 = [v10 mutableCopy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setContentItemIdentifiers:v11];

  v12 = [(MRPlaybackQueueRequest *)self requestedArtworkFormats];
  v13 = [v12 mutableCopy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setRequestedArtworkFormats:v13];

  v14 = [(MRPlaybackQueueRequest *)self requestedRemoteArtworkFormats];
  v15 = [v14 mutableCopy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setRequestedRemoteArtworkFormats:v15];

  v16 = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkPreviewFrameFormats];
  v17 = [v16 mutableCopy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setRequestedAnimatedArtworkPreviewFrameFormats:v17];

  v18 = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkAssetURLFormats];
  v19 = [v18 mutableCopy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setRequestedAnimatedArtworkAssetURLFormats:v19];

  return v3;
}

- (id)requestByRemovingArtwork
{
  v2 = [(MRPlaybackQueueRequest *)self copy];
  [v2 setArtworkWidth:0.0];
  [v2 setArtworkHeight:0.0];

  return v2;
}

- (BOOL)includeRemoteArtwork
{
  v2 = [(MRPlaybackQueueRequest *)self requestedRemoteArtworkFormats];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)includeArtwork
{
  [(MRPlaybackQueueRequest *)self artworkHeight];
  if (fabs(v3) <= 2.22044605e-16)
  {
    return 0;
  }

  [(MRPlaybackQueueRequest *)self artworkWidth];
  return fabs(v4) > 2.22044605e-16;
}

- (BOOL)rangeContainsNowPlayingItem
{
  v3 = [(MRPlaybackQueueRequest *)self location];
  v4 = [(MRPlaybackQueueRequest *)self location];
  v5 = [(MRPlaybackQueueRequest *)self length]+ v4;
  return v3 < 1 && v5 > 0;
}

- (BOOL)shouldRequestItem
{
  if ([(MRPlaybackQueueRequest *)self includeMetadata])
  {
    return 1;
  }

  return [(MRPlaybackQueueRequest *)self shouldRequestItemNotConsideringMetadata];
}

- (MRPlaybackQueueRequest)skeleton
{
  v3 = objc_alloc_init(MRPlaybackQueueRequest);
  if ([(MRPlaybackQueueRequest *)self hasLocation])
  {
    [(MRPlaybackQueueRequest *)v3 setLocation:[(MRPlaybackQueueRequest *)self location]];
  }

  if ([(MRPlaybackQueueRequest *)self hasLength])
  {
    [(MRPlaybackQueueRequest *)v3 setLength:[(MRPlaybackQueueRequest *)self length]];
  }

  if ([(MRPlaybackQueueRequest *)self hasCachingPolicy])
  {
    [(MRPlaybackQueueRequest *)v3 setCachingPolicy:[(MRPlaybackQueueRequest *)self cachingPolicy]];
  }

  if ([(MRPlaybackQueueRequest *)self hasLegacyNowPlayingInfoRequest])
  {
    [(MRPlaybackQueueRequest *)v3 setLegacyNowPlayingInfoRequest:[(MRPlaybackQueueRequest *)self isLegacyNowPlayingInfoRequest]];
  }

  v4 = [(MRPlaybackQueueRequest *)self requestIdentifier];
  [(MRPlaybackQueueRequest *)v3 setRequestIdentifier:v4];

  v5 = [(MRPlaybackQueueRequest *)self label];
  [(MRPlaybackQueueRequest *)v3 setLabel:v5];

  v6 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
  [(MRPlaybackQueueRequest *)v3 setContentItemIdentifiers:v6];

  return v3;
}

+ (id)defaultPlaybackQueueRequestWithRange:(_NSRange)a3
{
  v3 = [[MRPlaybackQueueRequest alloc] initWithRange:a3.location, a3.length];
  [(MRPlaybackQueueRequest *)v3 setIncludeMetadata:1];
  [(MRPlaybackQueueRequest *)v3 setIncludeLanguageOptions:1];

  return v3;
}

+ (MRPlaybackQueueRequest)requestWithCurrentState:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = [[MRPlaybackQueueRequest alloc] initWithIdentifiers:v6 range:location, length];

  return v7;
}

- (MRPlaybackQueueRequest)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  result = [(MRPlaybackQueueRequest *)self init];
  if (result)
  {
    *&result->_hasLocation = 257;
    result->_location = location;
    result->_length = length;
  }

  return result;
}

- (MRPlaybackQueueRequest)initWithIdentifiers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRPlaybackQueueRequest;
  v5 = [(MRPlaybackQueueRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contentItemIdentifiers = v5->_contentItemIdentifiers;
    v5->_contentItemIdentifiers = v6;
  }

  return v5;
}

- (MRPlaybackQueueRequest)initWithIdentifiers:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  result = [(MRPlaybackQueueRequest *)self initWithIdentifiers:a3];
  if (result)
  {
    *&result->_hasLocation = 257;
    result->_location = location;
    result->_length = length;
  }

  return result;
}

- (id)initFromTransactionName:(unint64_t)a3
{
  result = [(MRPlaybackQueueRequest *)self initWithRange:0, 0];
  if (result)
  {
    if (a3 <= 4)
    {
      switch(a3)
      {
        case 2uLL:
          *(result + 8) = 1;
          v5 = 17;
          break;
        case 3uLL:
          *(result + 11) = 1;
          v5 = 22;
          break;
        case 4uLL:
          *(result + 9) = 1;
          v5 = 20;
          break;
        default:
          return result;
      }
    }

    else if (a3 > 6)
    {
      if (a3 == 7)
      {
        *(result + 18) = 1;
        *(result + 40) = vdupq_n_s64(0x4082C00000000000uLL);
        v5 = 19;
      }

      else
      {
        if (a3 != 8)
        {
          return result;
        }

        *(result + 12) = 1;
        v5 = 23;
      }
    }

    else if (a3 == 5)
    {
      *(result + 13) = 1;
      v5 = 24;
    }

    else
    {
      *(result + 10) = 1;
      v5 = 21;
    }

    *(result + v5) = 1;
  }

  return result;
}

- (MRPlaybackQueueRequest)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v35.receiver = self;
    v35.super_class = MRPlaybackQueueRequest;
    v5 = [(MRPlaybackQueueRequest *)&v35 init];
    if (v5)
    {
      v5->_location = [v4 location];
      v5->_hasLocation = [v4 hasLocation];
      v5->_length = [v4 length];
      v5->_hasLength = [v4 hasLength];
      v5->_includeMetadata = [v4 includeMetadata];
      v5->_hasIncludeMetadata = [v4 hasIncludeMetadata];
      [v4 artworkWidth];
      v5->_artworkWidth = v6;
      v5->_hasArtworkWidth = [v4 hasArtworkWidth];
      [v4 artworkHeight];
      v5->_artworkHeight = v7;
      v5->_hasArtworkHeight = [v4 hasArtworkHeight];
      v5->_includeLyrics = [v4 includeLyrics];
      v5->_hasIncludeLyrics = [v4 hasIncludeLyrics];
      v5->_includeSections = [v4 includeSections];
      v5->_hasIncludeSections = [v4 hasIncludeSections];
      v5->_includeInfo = [v4 includeInfo];
      v5->_hasIncludeInfo = [v4 hasIncludeInfo];
      v5->_includeAlignments = [v4 includeAlignments];
      v5->_hasIncludeAlignments = [v4 hasIncludeAlignments];
      v5->_includeLanguageOptions = [v4 includeLanguageOptions];
      v5->_hasIncludeLanguageOptions = [v4 hasIncludeLanguageOptions];
      v5->_includeAvailableArtworkFormats = [v4 includeAvailableArtworkFormats];
      v5->_hasIncludeAvailableArtworkFormats = [v4 hasIncludeAvailableArtworkFormats];
      v5->_legacyNowPlayingInfoRequest = [v4 isLegacyNowPlayingInfoRequest];
      v5->_hasLegacyNowPlayingInfoRequest = [v4 hasIsLegacyNowPlayingInfoRequest];
      v5->_cachingPolicy = [v4 cachingPolicy];
      v5->_hasCachingPolicy = [v4 hasCachingPolicy];
      if ([v4 hasPlayerPath])
      {
        v8 = [MRPlayerPath alloc];
        v9 = [v4 playerPath];
        v10 = [(MRPlayerPath *)v8 initWithProtobuf:v9];
        playerPath = v5->_playerPath;
        v5->_playerPath = v10;
      }

      v12 = [v4 requestID];
      v13 = [v12 copy];
      requestIdentifier = v5->_requestIdentifier;
      v5->_requestIdentifier = v13;

      v15 = [v4 label];
      v16 = [v15 copy];
      label = v5->_label;
      v5->_label = v16;

      v18 = [v4 contentItemIdentifiers];
      v19 = [v18 copy];
      contentItemIdentifiers = v5->_contentItemIdentifiers;
      v5->_contentItemIdentifiers = v19;

      v21 = [v4 requestedArtworkFormats];
      v22 = [v21 copy];
      requestedArtworkFormats = v5->_requestedArtworkFormats;
      v5->_requestedArtworkFormats = v22;

      v24 = [v4 requestedRemoteArtworkFormats];
      v25 = [v24 copy];
      requestedRemoteArtworkFormats = v5->_requestedRemoteArtworkFormats;
      v5->_requestedRemoteArtworkFormats = v25;

      v27 = [v4 requestedAnimatedArtworkPreviewFrameFormats];
      v28 = [v27 copy];
      requestedAnimatedArtworkPreviewFrameFormats = v5->_requestedAnimatedArtworkPreviewFrameFormats;
      v5->_requestedAnimatedArtworkPreviewFrameFormats = v28;

      v30 = [v4 requestedAnimatedArtworkAssetURLFormats];
      v31 = [v30 copy];
      requestedAnimatedArtworkAssetURLFormats = v5->_requestedAnimatedArtworkAssetURLFormats;
      v5->_requestedAnimatedArtworkAssetURLFormats = v31;
    }

    self = v5;
    v33 = self;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (MRPlaybackQueueRequest)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRPlaybackQueueRequestProtobuf alloc] initWithData:v4];

    self = [(MRPlaybackQueueRequest *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"playbackQueueRequest";
  v2 = [(MRPlaybackQueueRequest *)self description];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)shouldRequestItemNotConsideringMetadata
{
  if ([(MRPlaybackQueueRequest *)self includeLanguageOptions])
  {
    return 1;
  }

  if ([(MRPlaybackQueueRequest *)self includeSections])
  {
    return 1;
  }

  if ([(MRPlaybackQueueRequest *)self includeInfo])
  {
    return 1;
  }

  if ([(MRPlaybackQueueRequest *)self includeAlignments])
  {
    return 1;
  }

  if ([(MRPlaybackQueueRequest *)self includeLyrics])
  {
    return 1;
  }

  [(MRPlaybackQueueRequest *)self artworkWidth];
  if (v3 != 0.0)
  {
    [(MRPlaybackQueueRequest *)self artworkHeight];
    if (v4 != 0.0)
    {
      return 1;
    }
  }

  if ([(MRPlaybackQueueRequest *)self includeAvailableArtworkFormats])
  {
    return 1;
  }

  v7 = [(MRPlaybackQueueRequest *)self requestedArtworkFormats];
  if ([v7 count])
  {
    v5 = 1;
  }

  else
  {
    v8 = [(MRPlaybackQueueRequest *)self requestedRemoteArtworkFormats];
    if ([v8 count])
    {
      v5 = 1;
    }

    else
    {
      v9 = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkPreviewFrameFormats];
      if ([v9 count])
      {
        v5 = 1;
      }

      else
      {
        v10 = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkAssetURLFormats];
        v5 = [v10 count] != 0;
      }
    }
  }

  return v5;
}

- (BOOL)containsNonDefaultAssets
{
  v3 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
  LOBYTE(self) = [v3 match:self];

  return self;
}

- (void)setIncludeMetadata:(BOOL)a3
{
  self->_includeMetadata = a3;
  if (a3)
  {
    [(MRPlaybackQueueRequest *)self setIncludeAvailableArtworkFormats:1];
  }

  self->_hasIncludeMetadata = 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v41 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_66;
    }

    v5 = [(MRPlaybackQueueRequest *)v4 hasLocation];
    if (v5 != [(MRPlaybackQueueRequest *)self hasLocation])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasLocation])
    {
      if ([(MRPlaybackQueueRequest *)self hasLocation])
      {
        v6 = [(MRPlaybackQueueRequest *)v4 location];
        if (v6 != [(MRPlaybackQueueRequest *)self location])
        {
          goto LABEL_66;
        }
      }
    }

    v7 = [(MRPlaybackQueueRequest *)v4 hasLength];
    if (v7 != [(MRPlaybackQueueRequest *)self hasLength])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasLength])
    {
      if ([(MRPlaybackQueueRequest *)self hasLength])
      {
        v8 = [(MRPlaybackQueueRequest *)v4 length];
        if (v8 != [(MRPlaybackQueueRequest *)self length])
        {
          goto LABEL_66;
        }
      }
    }

    v9 = [(MRPlaybackQueueRequest *)v4 hasIncludeMetadata];
    if (v9 != [(MRPlaybackQueueRequest *)self hasIncludeMetadata])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasIncludeMetadata])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeMetadata])
      {
        v10 = [(MRPlaybackQueueRequest *)v4 includeMetadata];
        if (v10 != [(MRPlaybackQueueRequest *)self includeMetadata])
        {
          goto LABEL_66;
        }
      }
    }

    v11 = [(MRPlaybackQueueRequest *)v4 hasArtworkWidth];
    if (v11 != [(MRPlaybackQueueRequest *)self hasArtworkWidth])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasArtworkWidth])
    {
      if ([(MRPlaybackQueueRequest *)self hasArtworkWidth])
      {
        [(MRPlaybackQueueRequest *)v4 artworkWidth];
        v13 = v12;
        [(MRPlaybackQueueRequest *)self artworkWidth];
        if (v13 != v14)
        {
          goto LABEL_66;
        }
      }
    }

    v15 = [(MRPlaybackQueueRequest *)v4 hasArtworkHeight];
    if (v15 != [(MRPlaybackQueueRequest *)self hasArtworkHeight])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasArtworkHeight])
    {
      if ([(MRPlaybackQueueRequest *)self hasArtworkHeight])
      {
        [(MRPlaybackQueueRequest *)v4 artworkHeight];
        v17 = v16;
        [(MRPlaybackQueueRequest *)self artworkHeight];
        if (v17 != v18)
        {
          goto LABEL_66;
        }
      }
    }

    v19 = [(MRPlaybackQueueRequest *)v4 hasIncludeLyrics];
    if (v19 != [(MRPlaybackQueueRequest *)self hasIncludeLyrics])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasIncludeLyrics])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeLyrics])
      {
        v20 = [(MRPlaybackQueueRequest *)v4 includeLyrics];
        if (v20 != [(MRPlaybackQueueRequest *)self includeLyrics])
        {
          goto LABEL_66;
        }
      }
    }

    v21 = [(MRPlaybackQueueRequest *)v4 hasIncludeSections];
    if (v21 != [(MRPlaybackQueueRequest *)self hasIncludeSections])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasIncludeSections])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeSections])
      {
        v22 = [(MRPlaybackQueueRequest *)v4 includeSections];
        if (v22 != [(MRPlaybackQueueRequest *)self includeSections])
        {
          goto LABEL_66;
        }
      }
    }

    v23 = [(MRPlaybackQueueRequest *)v4 hasIncludeInfo];
    if (v23 != [(MRPlaybackQueueRequest *)self hasIncludeInfo])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasIncludeInfo])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeInfo])
      {
        v24 = [(MRPlaybackQueueRequest *)v4 includeInfo];
        if (v24 != [(MRPlaybackQueueRequest *)self includeInfo])
        {
          goto LABEL_66;
        }
      }
    }

    v25 = [(MRPlaybackQueueRequest *)v4 hasIncludeAlignments];
    if (v25 != [(MRPlaybackQueueRequest *)self hasIncludeAlignments])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasIncludeAlignments])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeAlignments])
      {
        v26 = [(MRPlaybackQueueRequest *)v4 includeAlignments];
        if (v26 != [(MRPlaybackQueueRequest *)self includeAlignments])
        {
          goto LABEL_66;
        }
      }
    }

    v27 = [(MRPlaybackQueueRequest *)v4 hasIncludeLanguageOptions];
    if (v27 != [(MRPlaybackQueueRequest *)self hasIncludeLanguageOptions])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasIncludeLanguageOptions])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeLanguageOptions])
      {
        v28 = [(MRPlaybackQueueRequest *)v4 includeLanguageOptions];
        if (v28 != [(MRPlaybackQueueRequest *)self includeLanguageOptions])
        {
          goto LABEL_66;
        }
      }
    }

    v29 = [(MRPlaybackQueueRequest *)v4 hasIncludeAvailableArtworkFormats];
    if (v29 != [(MRPlaybackQueueRequest *)self hasIncludeAvailableArtworkFormats])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasIncludeAvailableArtworkFormats])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeAvailableArtworkFormats])
      {
        v30 = [(MRPlaybackQueueRequest *)v4 includeAvailableArtworkFormats];
        if (v30 != [(MRPlaybackQueueRequest *)self includeAvailableArtworkFormats])
        {
          goto LABEL_66;
        }
      }
    }

    v31 = [(MRPlaybackQueueRequest *)v4 hasLegacyNowPlayingInfoRequest];
    if (v31 != [(MRPlaybackQueueRequest *)self hasLegacyNowPlayingInfoRequest])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasLegacyNowPlayingInfoRequest])
    {
      if ([(MRPlaybackQueueRequest *)self hasLegacyNowPlayingInfoRequest])
      {
        v32 = [(MRPlaybackQueueRequest *)v4 isLegacyNowPlayingInfoRequest];
        if (v32 != [(MRPlaybackQueueRequest *)self isLegacyNowPlayingInfoRequest])
        {
          goto LABEL_66;
        }
      }
    }

    v33 = [(MRPlaybackQueueRequest *)v4 hasCachingPolicy];
    if (v33 != [(MRPlaybackQueueRequest *)self hasCachingPolicy])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)v4 hasCachingPolicy])
    {
      if ([(MRPlaybackQueueRequest *)self hasCachingPolicy])
      {
        v34 = [(MRPlaybackQueueRequest *)v4 cachingPolicy];
        if (v34 != [(MRPlaybackQueueRequest *)self cachingPolicy])
        {
          goto LABEL_66;
        }
      }
    }

    v35 = [(MRPlaybackQueueRequest *)v4 playerPath];
    v36 = [(MRPlaybackQueueRequest *)self playerPath];
    v37 = v36;
    if (v35 == v36)
    {
    }

    else
    {
      v38 = [(MRPlaybackQueueRequest *)v4 playerPath];
      v39 = [(MRPlaybackQueueRequest *)self playerPath];
      v40 = [v38 isEqual:v39];

      if (!v40)
      {
        goto LABEL_66;
      }
    }

    v42 = [(MRPlaybackQueueRequest *)v4 requestIdentifier];
    v43 = [(MRPlaybackQueueRequest *)self requestIdentifier];
    v44 = v43;
    if (v42 == v43)
    {
    }

    else
    {
      v45 = [(MRPlaybackQueueRequest *)v4 requestIdentifier];
      v46 = [(MRPlaybackQueueRequest *)self requestIdentifier];
      v47 = [v45 isEqualToString:v46];

      if (!v47)
      {
        goto LABEL_66;
      }
    }

    v48 = [(MRPlaybackQueueRequest *)v4 label];
    v49 = [(MRPlaybackQueueRequest *)self label];
    v50 = v49;
    if (v48 == v49)
    {
    }

    else
    {
      v51 = [(MRPlaybackQueueRequest *)v4 label];
      v52 = [(MRPlaybackQueueRequest *)self label];
      v53 = [v51 isEqualToString:v52];

      if (!v53)
      {
LABEL_66:
        v41 = 0;
        goto LABEL_67;
      }
    }

    v55 = [(MRPlaybackQueueRequest *)v4 contentItemIdentifiers];
    v56 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
    if (v55 == v56)
    {
      v41 = 1;
    }

    else
    {
      v57 = [(MRPlaybackQueueRequest *)v4 contentItemIdentifiers];
      v58 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
      v41 = [v57 isEqualToArray:v58];
    }
  }

LABEL_67:

  return v41 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setLocation:{-[MRPlaybackQueueRequest location](self, "location")}];
  [v5 setHasLocation:{-[MRPlaybackQueueRequest hasLocation](self, "hasLocation")}];
  [v5 setLength:{-[MRPlaybackQueueRequest length](self, "length")}];
  [v5 setHasLength:{-[MRPlaybackQueueRequest hasLength](self, "hasLength")}];
  [v5 setIncludeMetadata:{-[MRPlaybackQueueRequest includeMetadata](self, "includeMetadata")}];
  [v5 setHasIncludeMetadata:{-[MRPlaybackQueueRequest hasIncludeMetadata](self, "hasIncludeMetadata")}];
  [(MRPlaybackQueueRequest *)self artworkWidth];
  [v5 setArtworkWidth:?];
  [v5 setHasArtworkWidth:{-[MRPlaybackQueueRequest hasArtworkWidth](self, "hasArtworkWidth")}];
  [(MRPlaybackQueueRequest *)self artworkHeight];
  [v5 setArtworkHeight:?];
  [v5 setHasArtworkHeight:{-[MRPlaybackQueueRequest hasArtworkHeight](self, "hasArtworkHeight")}];
  [v5 setIncludeLyrics:{-[MRPlaybackQueueRequest includeLyrics](self, "includeLyrics")}];
  [v5 setHasIncludeLyrics:{-[MRPlaybackQueueRequest hasIncludeLyrics](self, "hasIncludeLyrics")}];
  [v5 setIncludeSections:{-[MRPlaybackQueueRequest includeSections](self, "includeSections")}];
  [v5 setHasIncludeSections:{-[MRPlaybackQueueRequest hasIncludeSections](self, "hasIncludeSections")}];
  [v5 setIncludeInfo:{-[MRPlaybackQueueRequest includeInfo](self, "includeInfo")}];
  [v5 setHasIncludeInfo:{-[MRPlaybackQueueRequest hasIncludeInfo](self, "hasIncludeInfo")}];
  [v5 setIncludeAlignments:{-[MRPlaybackQueueRequest includeAlignments](self, "includeAlignments")}];
  [v5 setHasIncludeAlignments:{-[MRPlaybackQueueRequest hasIncludeAlignments](self, "hasIncludeAlignments")}];
  [v5 setIncludeLanguageOptions:{-[MRPlaybackQueueRequest includeLanguageOptions](self, "includeLanguageOptions")}];
  [v5 setHasIncludeLanguageOptions:{-[MRPlaybackQueueRequest hasIncludeLanguageOptions](self, "hasIncludeLanguageOptions")}];
  [v5 setIncludeAvailableArtworkFormats:{-[MRPlaybackQueueRequest includeAvailableArtworkFormats](self, "includeAvailableArtworkFormats")}];
  [v5 setHasIncludeAvailableArtworkFormats:{-[MRPlaybackQueueRequest hasIncludeAvailableArtworkFormats](self, "hasIncludeAvailableArtworkFormats")}];
  v6 = [(MRPlaybackQueueRequest *)self requestedArtworkFormats];
  [v5 setRequestedArtworkFormats:v6];

  v7 = [(MRPlaybackQueueRequest *)self requestedRemoteArtworkFormats];
  [v5 setRequestedRemoteArtworkFormats:v7];

  v8 = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkPreviewFrameFormats];
  [v5 setRequestedAnimatedArtworkPreviewFrameFormats:v8];

  v9 = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkAssetURLFormats];
  [v5 setRequestedAnimatedArtworkAssetURLFormats:v9];

  [v5 setLegacyNowPlayingInfoRequest:{-[MRPlaybackQueueRequest isLegacyNowPlayingInfoRequest](self, "isLegacyNowPlayingInfoRequest")}];
  [v5 setHasLegacyNowPlayingInfoRequest:{-[MRPlaybackQueueRequest isLegacyNowPlayingInfoRequest](self, "isLegacyNowPlayingInfoRequest")}];
  [v5 setCachingPolicy:{-[MRPlaybackQueueRequest cachingPolicy](self, "cachingPolicy")}];
  [v5 setHasCachingPolicy:{-[MRPlaybackQueueRequest cachingPolicy](self, "cachingPolicy") != 0}];
  v10 = [(MRPlaybackQueueRequest *)self playerPath];
  v11 = [v10 copyWithZone:a3];
  [v5 setPlayerPath:v11];

  v12 = [(MRPlaybackQueueRequest *)self requestIdentifier];
  v13 = [v12 copyWithZone:a3];
  [v5 setRequestIdentifier:v13];

  v14 = [(MRPlaybackQueueRequest *)self label];
  v15 = [v14 copyWithZone:a3];
  [v5 setLabel:v15];

  v16 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
  v17 = [v16 copyWithZone:a3];
  [v5 setContentItemIdentifiers:v17];

  return v5;
}

- (MRPlaybackQueueRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MRLanguageOption *)v5 initWithCoder:v6];
    }

    v5 = 0;
  }

  v7 = [(MRPlaybackQueueRequest *)self initWithProtobuf:v5];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackQueueRequest *)self protobuf];
  [v4 encodeObject:v5 forKey:@"protobuf"];
}

- (void)mergeFrom:(id)a3
{
  v16 = a3;
  if ([v16 includeMetadata])
  {
    -[MRPlaybackQueueRequest setIncludeMetadata:](self, "setIncludeMetadata:", [v16 includeMetadata]);
  }

  if ([v16 includeInfo])
  {
    -[MRPlaybackQueueRequest setIncludeInfo:](self, "setIncludeInfo:", [v16 includeInfo]);
  }

  if ([v16 includeAlignments])
  {
    -[MRPlaybackQueueRequest setIncludeAlignments:](self, "setIncludeAlignments:", [v16 includeAlignments]);
  }

  if ([v16 includeLyrics])
  {
    -[MRPlaybackQueueRequest setIncludeLyrics:](self, "setIncludeLyrics:", [v16 includeLyrics]);
  }

  if ([v16 includeSections])
  {
    -[MRPlaybackQueueRequest setIncludeSections:](self, "setIncludeSections:", [v16 includeSections]);
  }

  if ([v16 includeLanguageOptions])
  {
    -[MRPlaybackQueueRequest setIncludeLanguageOptions:](self, "setIncludeLanguageOptions:", [v16 includeLanguageOptions]);
  }

  if ([v16 hasArtworkWidth])
  {
    [v16 artworkWidth];
    [(MRPlaybackQueueRequest *)self setArtworkWidth:?];
  }

  if ([v16 hasArtworkHeight])
  {
    [v16 artworkHeight];
    [(MRPlaybackQueueRequest *)self setArtworkHeight:?];
  }

  if ([v16 hasIncludeAvailableArtworkFormats])
  {
    -[MRPlaybackQueueRequest setIncludeAvailableArtworkFormats:](self, "setIncludeAvailableArtworkFormats:", [v16 includeAvailableArtworkFormats]);
  }

  v4 = [v16 requestedArtworkFormats];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v16 requestedArtworkFormats];
    [(MRPlaybackQueueRequest *)self setRequestedArtworkFormats:v6];
  }

  v7 = [v16 requestedRemoteArtworkFormats];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v16 requestedRemoteArtworkFormats];
    [(MRPlaybackQueueRequest *)self setRequestedRemoteArtworkFormats:v9];
  }

  v10 = [v16 requestedAnimatedArtworkPreviewFrameFormats];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v16 requestedAnimatedArtworkPreviewFrameFormats];
    [(MRPlaybackQueueRequest *)self setRequestedAnimatedArtworkPreviewFrameFormats:v12];
  }

  v13 = [v16 requestedAnimatedArtworkAssetURLFormats];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [v16 requestedAnimatedArtworkAssetURLFormats];
    [(MRPlaybackQueueRequest *)self setRequestedAnimatedArtworkAssetURLFormats:v15];
  }
}

- (BOOL)match:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackQueueRequest *)self includeMetadata];
  if (v5 == [v4 includeMetadata] || (v6 = -[MRPlaybackQueueRequest includeInfo](self, "includeInfo"), v6 == objc_msgSend(v4, "includeInfo")) || (v7 = -[MRPlaybackQueueRequest includeAlignments](self, "includeAlignments"), v7 == objc_msgSend(v4, "includeAlignments")) || (v8 = -[MRPlaybackQueueRequest includeLyrics](self, "includeLyrics"), v8 == objc_msgSend(v4, "includeLyrics")) || (v9 = -[MRPlaybackQueueRequest includeLanguageOptions](self, "includeLanguageOptions"), v9 == objc_msgSend(v4, "includeLanguageOptions")) || (v10 = -[MRPlaybackQueueRequest includeSections](self, "includeSections"), v10 == objc_msgSend(v4, "includeSections")))
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v11 = [(MRPlaybackQueueRequest *)self includeArtwork];
    v12 = v11 ^ [v4 includeArtwork] ^ 1;
  }

  return v12;
}

- (BOOL)exactMatch:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else if (v4 && (v6 = [(MRPlaybackQueueRequest *)self includeMetadata], v6 == [(MRPlaybackQueueRequest *)v5 includeMetadata]) && (v7 = [(MRPlaybackQueueRequest *)self includeInfo], v7 == [(MRPlaybackQueueRequest *)v5 includeInfo]) && (v8 = [(MRPlaybackQueueRequest *)self includeAlignments], v8 == [(MRPlaybackQueueRequest *)v5 includeAlignments]) && (v9 = [(MRPlaybackQueueRequest *)self includeLyrics], v9 == [(MRPlaybackQueueRequest *)v5 includeLyrics]) && (v10 = [(MRPlaybackQueueRequest *)self includeLanguageOptions], v10 == [(MRPlaybackQueueRequest *)v5 includeLanguageOptions]) && (v11 = [(MRPlaybackQueueRequest *)self includeSections], v11 == [(MRPlaybackQueueRequest *)v5 includeSections]))
  {
    v14 = [(MRPlaybackQueueRequest *)self includeArtwork];
    v12 = v14 ^ [(MRPlaybackQueueRequest *)v5 includeArtwork]^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)performRequestForDestination:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MRNowPlayingControllerConfiguration alloc] initWithDestination:v7];

  [(MRNowPlayingControllerConfiguration *)v8 setPlaybackQueueRequest:self];
  [(MRNowPlayingControllerConfiguration *)v8 setLabel:@"performPlaybackQueueRequest"];
  v9 = [[MRNowPlayingController alloc] initWithConfiguration:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__MRPlaybackQueueRequest_performRequestForDestination_completion___block_invoke;
  v11[3] = &unk_1E769E230;
  v12 = v6;
  v10 = v6;
  [(MRNowPlayingController *)v9 performRequestWithCompletion:v11];
}

void __66__MRPlaybackQueueRequest_performRequestForDestination_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 playbackQueue];
  (*(v4 + 16))(v4, v6, v5);
}

@end
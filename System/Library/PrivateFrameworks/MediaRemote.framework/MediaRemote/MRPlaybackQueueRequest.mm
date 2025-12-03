@interface MRPlaybackQueueRequest
+ (MRPlaybackQueueRequest)requestWithCurrentState:(id)state range:(_NSRange)range;
+ (id)defaultPlaybackQueueRequestWithRange:(_NSRange)range;
- (BOOL)containsNonDefaultAssets;
- (BOOL)exactMatch:(id)match;
- (BOOL)hasRange;
- (BOOL)includeArtwork;
- (BOOL)includeRemoteArtwork;
- (BOOL)isEqual:(id)equal;
- (BOOL)match:(id)match;
- (BOOL)rangeContainsNowPlayingItem;
- (BOOL)shouldRequestItem;
- (BOOL)shouldRequestItemNotConsideringMetadata;
- (MRPlaybackQueueRequest)initWithCoder:(id)coder;
- (MRPlaybackQueueRequest)initWithData:(id)data;
- (MRPlaybackQueueRequest)initWithIdentifiers:(id)identifiers;
- (MRPlaybackQueueRequest)initWithIdentifiers:(id)identifiers range:(_NSRange)range;
- (MRPlaybackQueueRequest)initWithProtobuf:(id)protobuf;
- (MRPlaybackQueueRequest)initWithRange:(_NSRange)range;
- (MRPlaybackQueueRequest)skeleton;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (_MRPlaybackQueueRequestProtobuf)protobuf;
- (_NSRange)range;
- (id)_buildRequestedPropertiesDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initFromTransactionName:(unint64_t)name;
- (id)requestByRemovingArtwork;
- (void)encodeWithCoder:(id)coder;
- (void)mergeFrom:(id)from;
- (void)performRequestForDestination:(id)destination completion:(id)completion;
- (void)setIncludeMetadata:(BOOL)metadata;
@end

@implementation MRPlaybackQueueRequest

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  requestIdentifier = [(MRPlaybackQueueRequest *)self requestIdentifier];
  [v3 appendFormat:@"%@ ", requestIdentifier];

  label = [(MRPlaybackQueueRequest *)self label];
  [v3 appendFormat:@"%@ ", label];

  _buildRequestedPropertiesDescription = [(MRPlaybackQueueRequest *)self _buildRequestedPropertiesDescription];
  [v3 appendString:_buildRequestedPropertiesDescription];

  contentItemIdentifiers = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];

  if (contentItemIdentifiers)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    for (i = 0; ; ++i)
    {
      contentItemIdentifiers2 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
      if ([contentItemIdentifiers2 count] > 3)
      {

        if (i >= 3)
        {
LABEL_8:
          contentItemIdentifiers3 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
          [v3 appendFormat:@"/IDs (%ld): %@", objc_msgSend(contentItemIdentifiers3, "count"), v8];

          break;
        }
      }

      else
      {
        contentItemIdentifiers4 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
        v12 = [contentItemIdentifiers4 count];

        if (i >= v12)
        {
          goto LABEL_8;
        }
      }

      contentItemIdentifiers5 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
      v14 = [contentItemIdentifiers5 objectAtIndex:i];

      [v8 addObject:v14];
    }
  }

  v16 = [v3 copy];

  return v16;
}

- (id)_buildRequestedPropertiesDescription
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if ([selfCopy includeMetadata])
    {
      [v2 appendString:@"/M"];
    }

    if ([selfCopy includeInfo])
    {
      [v2 appendString:@"/I"];
    }

    if ([selfCopy includeLanguageOptions])
    {
      [v2 appendString:@"/L"];
    }

    if ([selfCopy includeLyrics])
    {
      [v2 appendString:@"/Ly"];
    }

    if ([selfCopy includeAlignments])
    {
      [v2 appendString:@"/Al"];
    }

    if ([selfCopy includeSections])
    {
      [v2 appendString:@"/S"];
    }

    if ([selfCopy includeAvailableArtworkFormats])
    {
      [v2 appendString:@"/AF"];
    }

    [selfCopy artworkWidth];
    if (v3 != 0.0)
    {
      [selfCopy artworkHeight];
      if (v4 != 0.0)
      {
        [selfCopy artworkWidth];
        v6 = v5;
        [selfCopy artworkHeight];
        [v2 appendFormat:@"/A%lfx%lf", v6, v7];
      }
    }

    requestedArtworkFormats = [selfCopy requestedArtworkFormats];
    v9 = [requestedArtworkFormats count];

    if (v9)
    {
      requestedArtworkFormats2 = [selfCopy requestedArtworkFormats];
      [v2 appendFormat:@"/FA[%ld]", objc_msgSend(requestedArtworkFormats2, "count")];
    }

    requestedRemoteArtworkFormats = [selfCopy requestedRemoteArtworkFormats];
    v12 = [requestedRemoteArtworkFormats count];

    if (v12)
    {
      requestedRemoteArtworkFormats2 = [selfCopy requestedRemoteArtworkFormats];
      [v2 appendFormat:@"/RFA[%ld]", objc_msgSend(requestedRemoteArtworkFormats2, "count")];
    }

    requestedAnimatedArtworkPreviewFrameFormats = [selfCopy requestedAnimatedArtworkPreviewFrameFormats];
    v15 = [requestedAnimatedArtworkPreviewFrameFormats count];

    if (v15)
    {
      requestedAnimatedArtworkPreviewFrameFormats2 = [selfCopy requestedAnimatedArtworkPreviewFrameFormats];
      [v2 appendFormat:@"/AAPF[%ld]", objc_msgSend(requestedAnimatedArtworkPreviewFrameFormats2, "count")];
    }

    requestedAnimatedArtworkAssetURLFormats = [selfCopy requestedAnimatedArtworkAssetURLFormats];
    v18 = [requestedAnimatedArtworkAssetURLFormats count];

    if (v18)
    {
      requestedAnimatedArtworkAssetURLFormats2 = [selfCopy requestedAnimatedArtworkAssetURLFormats];
      [v2 appendFormat:@"/AAU[%ld]", objc_msgSend(requestedAnimatedArtworkAssetURLFormats2, "count")];
    }

    if ([selfCopy hasLocation] && objc_msgSend(selfCopy, "hasLength"))
    {
      [v2 appendFormat:@"/R[%ld:%ld]", objc_msgSend(selfCopy, "location"), objc_msgSend(selfCopy, "length")];
    }

    selfCopy = [v2 copy];
  }

  return selfCopy;
}

- (BOOL)hasRange
{
  hasLocation = [(MRPlaybackQueueRequest *)self hasLocation];
  if (hasLocation)
  {

    LOBYTE(hasLocation) = [(MRPlaybackQueueRequest *)self hasLength];
  }

  return hasLocation;
}

- (_NSRange)range
{
  location = [(MRPlaybackQueueRequest *)self location];
  v4 = [(MRPlaybackQueueRequest *)self length];
  v5 = location;
  result.length = v4;
  result.location = v5;
  return result;
}

- (NSData)data
{
  protobuf = [(MRPlaybackQueueRequest *)self protobuf];
  data = [protobuf data];

  return data;
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
  playerPath = [(MRPlaybackQueueRequest *)self playerPath];
  protobuf = [playerPath protobuf];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setPlayerPath:protobuf];

  requestIdentifier = [(MRPlaybackQueueRequest *)self requestIdentifier];
  v7 = [requestIdentifier copy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setRequestID:v7];

  label = [(MRPlaybackQueueRequest *)self label];
  v9 = [label copy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setLabel:v9];

  contentItemIdentifiers = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
  v11 = [contentItemIdentifiers mutableCopy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setContentItemIdentifiers:v11];

  requestedArtworkFormats = [(MRPlaybackQueueRequest *)self requestedArtworkFormats];
  v13 = [requestedArtworkFormats mutableCopy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setRequestedArtworkFormats:v13];

  requestedRemoteArtworkFormats = [(MRPlaybackQueueRequest *)self requestedRemoteArtworkFormats];
  v15 = [requestedRemoteArtworkFormats mutableCopy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setRequestedRemoteArtworkFormats:v15];

  requestedAnimatedArtworkPreviewFrameFormats = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkPreviewFrameFormats];
  v17 = [requestedAnimatedArtworkPreviewFrameFormats mutableCopy];
  [(_MRPlaybackQueueRequestProtobuf *)v3 setRequestedAnimatedArtworkPreviewFrameFormats:v17];

  requestedAnimatedArtworkAssetURLFormats = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkAssetURLFormats];
  v19 = [requestedAnimatedArtworkAssetURLFormats mutableCopy];
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
  requestedRemoteArtworkFormats = [(MRPlaybackQueueRequest *)self requestedRemoteArtworkFormats];
  v3 = [requestedRemoteArtworkFormats count] != 0;

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
  location = [(MRPlaybackQueueRequest *)self location];
  location2 = [(MRPlaybackQueueRequest *)self location];
  v5 = [(MRPlaybackQueueRequest *)self length]+ location2;
  return location < 1 && v5 > 0;
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

  requestIdentifier = [(MRPlaybackQueueRequest *)self requestIdentifier];
  [(MRPlaybackQueueRequest *)v3 setRequestIdentifier:requestIdentifier];

  label = [(MRPlaybackQueueRequest *)self label];
  [(MRPlaybackQueueRequest *)v3 setLabel:label];

  contentItemIdentifiers = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
  [(MRPlaybackQueueRequest *)v3 setContentItemIdentifiers:contentItemIdentifiers];

  return v3;
}

+ (id)defaultPlaybackQueueRequestWithRange:(_NSRange)range
{
  v3 = [[MRPlaybackQueueRequest alloc] initWithRange:range.location, range.length];
  [(MRPlaybackQueueRequest *)v3 setIncludeMetadata:1];
  [(MRPlaybackQueueRequest *)v3 setIncludeLanguageOptions:1];

  return v3;
}

+ (MRPlaybackQueueRequest)requestWithCurrentState:(id)state range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stateCopy = state;
  v7 = [[MRPlaybackQueueRequest alloc] initWithIdentifiers:stateCopy range:location, length];

  return v7;
}

- (MRPlaybackQueueRequest)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  result = [(MRPlaybackQueueRequest *)self init];
  if (result)
  {
    *&result->_hasLocation = 257;
    result->_location = location;
    result->_length = length;
  }

  return result;
}

- (MRPlaybackQueueRequest)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = MRPlaybackQueueRequest;
  v5 = [(MRPlaybackQueueRequest *)&v9 init];
  if (v5)
  {
    v6 = [identifiersCopy copy];
    contentItemIdentifiers = v5->_contentItemIdentifiers;
    v5->_contentItemIdentifiers = v6;
  }

  return v5;
}

- (MRPlaybackQueueRequest)initWithIdentifiers:(id)identifiers range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  result = [(MRPlaybackQueueRequest *)self initWithIdentifiers:identifiers];
  if (result)
  {
    *&result->_hasLocation = 257;
    result->_location = location;
    result->_length = length;
  }

  return result;
}

- (id)initFromTransactionName:(unint64_t)name
{
  result = [(MRPlaybackQueueRequest *)self initWithRange:0, 0];
  if (result)
  {
    if (name <= 4)
    {
      switch(name)
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

    else if (name > 6)
    {
      if (name == 7)
      {
        *(result + 18) = 1;
        *(result + 40) = vdupq_n_s64(0x4082C00000000000uLL);
        v5 = 19;
      }

      else
      {
        if (name != 8)
        {
          return result;
        }

        *(result + 12) = 1;
        v5 = 23;
      }
    }

    else if (name == 5)
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

- (MRPlaybackQueueRequest)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v35.receiver = self;
    v35.super_class = MRPlaybackQueueRequest;
    v5 = [(MRPlaybackQueueRequest *)&v35 init];
    if (v5)
    {
      v5->_location = [protobufCopy location];
      v5->_hasLocation = [protobufCopy hasLocation];
      v5->_length = [protobufCopy length];
      v5->_hasLength = [protobufCopy hasLength];
      v5->_includeMetadata = [protobufCopy includeMetadata];
      v5->_hasIncludeMetadata = [protobufCopy hasIncludeMetadata];
      [protobufCopy artworkWidth];
      v5->_artworkWidth = v6;
      v5->_hasArtworkWidth = [protobufCopy hasArtworkWidth];
      [protobufCopy artworkHeight];
      v5->_artworkHeight = v7;
      v5->_hasArtworkHeight = [protobufCopy hasArtworkHeight];
      v5->_includeLyrics = [protobufCopy includeLyrics];
      v5->_hasIncludeLyrics = [protobufCopy hasIncludeLyrics];
      v5->_includeSections = [protobufCopy includeSections];
      v5->_hasIncludeSections = [protobufCopy hasIncludeSections];
      v5->_includeInfo = [protobufCopy includeInfo];
      v5->_hasIncludeInfo = [protobufCopy hasIncludeInfo];
      v5->_includeAlignments = [protobufCopy includeAlignments];
      v5->_hasIncludeAlignments = [protobufCopy hasIncludeAlignments];
      v5->_includeLanguageOptions = [protobufCopy includeLanguageOptions];
      v5->_hasIncludeLanguageOptions = [protobufCopy hasIncludeLanguageOptions];
      v5->_includeAvailableArtworkFormats = [protobufCopy includeAvailableArtworkFormats];
      v5->_hasIncludeAvailableArtworkFormats = [protobufCopy hasIncludeAvailableArtworkFormats];
      v5->_legacyNowPlayingInfoRequest = [protobufCopy isLegacyNowPlayingInfoRequest];
      v5->_hasLegacyNowPlayingInfoRequest = [protobufCopy hasIsLegacyNowPlayingInfoRequest];
      v5->_cachingPolicy = [protobufCopy cachingPolicy];
      v5->_hasCachingPolicy = [protobufCopy hasCachingPolicy];
      if ([protobufCopy hasPlayerPath])
      {
        v8 = [MRPlayerPath alloc];
        playerPath = [protobufCopy playerPath];
        v10 = [(MRPlayerPath *)v8 initWithProtobuf:playerPath];
        playerPath = v5->_playerPath;
        v5->_playerPath = v10;
      }

      requestID = [protobufCopy requestID];
      v13 = [requestID copy];
      requestIdentifier = v5->_requestIdentifier;
      v5->_requestIdentifier = v13;

      label = [protobufCopy label];
      v16 = [label copy];
      label = v5->_label;
      v5->_label = v16;

      contentItemIdentifiers = [protobufCopy contentItemIdentifiers];
      v19 = [contentItemIdentifiers copy];
      contentItemIdentifiers = v5->_contentItemIdentifiers;
      v5->_contentItemIdentifiers = v19;

      requestedArtworkFormats = [protobufCopy requestedArtworkFormats];
      v22 = [requestedArtworkFormats copy];
      requestedArtworkFormats = v5->_requestedArtworkFormats;
      v5->_requestedArtworkFormats = v22;

      requestedRemoteArtworkFormats = [protobufCopy requestedRemoteArtworkFormats];
      v25 = [requestedRemoteArtworkFormats copy];
      requestedRemoteArtworkFormats = v5->_requestedRemoteArtworkFormats;
      v5->_requestedRemoteArtworkFormats = v25;

      requestedAnimatedArtworkPreviewFrameFormats = [protobufCopy requestedAnimatedArtworkPreviewFrameFormats];
      v28 = [requestedAnimatedArtworkPreviewFrameFormats copy];
      requestedAnimatedArtworkPreviewFrameFormats = v5->_requestedAnimatedArtworkPreviewFrameFormats;
      v5->_requestedAnimatedArtworkPreviewFrameFormats = v28;

      requestedAnimatedArtworkAssetURLFormats = [protobufCopy requestedAnimatedArtworkAssetURLFormats];
      v31 = [requestedAnimatedArtworkAssetURLFormats copy];
      requestedAnimatedArtworkAssetURLFormats = v5->_requestedAnimatedArtworkAssetURLFormats;
      v5->_requestedAnimatedArtworkAssetURLFormats = v31;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRPlaybackQueueRequest)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRPlaybackQueueRequestProtobuf alloc] initWithData:dataCopy];

    self = [(MRPlaybackQueueRequest *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

  requestedArtworkFormats = [(MRPlaybackQueueRequest *)self requestedArtworkFormats];
  if ([requestedArtworkFormats count])
  {
    v5 = 1;
  }

  else
  {
    requestedRemoteArtworkFormats = [(MRPlaybackQueueRequest *)self requestedRemoteArtworkFormats];
    if ([requestedRemoteArtworkFormats count])
    {
      v5 = 1;
    }

    else
    {
      requestedAnimatedArtworkPreviewFrameFormats = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkPreviewFrameFormats];
      if ([requestedAnimatedArtworkPreviewFrameFormats count])
      {
        v5 = 1;
      }

      else
      {
        requestedAnimatedArtworkAssetURLFormats = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkAssetURLFormats];
        v5 = [requestedAnimatedArtworkAssetURLFormats count] != 0;
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

- (void)setIncludeMetadata:(BOOL)metadata
{
  self->_includeMetadata = metadata;
  if (metadata)
  {
    [(MRPlaybackQueueRequest *)self setIncludeAvailableArtworkFormats:1];
  }

  self->_hasIncludeMetadata = 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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

    hasLocation = [(MRPlaybackQueueRequest *)equalCopy hasLocation];
    if (hasLocation != [(MRPlaybackQueueRequest *)self hasLocation])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasLocation])
    {
      if ([(MRPlaybackQueueRequest *)self hasLocation])
      {
        location = [(MRPlaybackQueueRequest *)equalCopy location];
        if (location != [(MRPlaybackQueueRequest *)self location])
        {
          goto LABEL_66;
        }
      }
    }

    hasLength = [(MRPlaybackQueueRequest *)equalCopy hasLength];
    if (hasLength != [(MRPlaybackQueueRequest *)self hasLength])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasLength])
    {
      if ([(MRPlaybackQueueRequest *)self hasLength])
      {
        v8 = [(MRPlaybackQueueRequest *)equalCopy length];
        if (v8 != [(MRPlaybackQueueRequest *)self length])
        {
          goto LABEL_66;
        }
      }
    }

    hasIncludeMetadata = [(MRPlaybackQueueRequest *)equalCopy hasIncludeMetadata];
    if (hasIncludeMetadata != [(MRPlaybackQueueRequest *)self hasIncludeMetadata])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasIncludeMetadata])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeMetadata])
      {
        includeMetadata = [(MRPlaybackQueueRequest *)equalCopy includeMetadata];
        if (includeMetadata != [(MRPlaybackQueueRequest *)self includeMetadata])
        {
          goto LABEL_66;
        }
      }
    }

    hasArtworkWidth = [(MRPlaybackQueueRequest *)equalCopy hasArtworkWidth];
    if (hasArtworkWidth != [(MRPlaybackQueueRequest *)self hasArtworkWidth])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasArtworkWidth])
    {
      if ([(MRPlaybackQueueRequest *)self hasArtworkWidth])
      {
        [(MRPlaybackQueueRequest *)equalCopy artworkWidth];
        v13 = v12;
        [(MRPlaybackQueueRequest *)self artworkWidth];
        if (v13 != v14)
        {
          goto LABEL_66;
        }
      }
    }

    hasArtworkHeight = [(MRPlaybackQueueRequest *)equalCopy hasArtworkHeight];
    if (hasArtworkHeight != [(MRPlaybackQueueRequest *)self hasArtworkHeight])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasArtworkHeight])
    {
      if ([(MRPlaybackQueueRequest *)self hasArtworkHeight])
      {
        [(MRPlaybackQueueRequest *)equalCopy artworkHeight];
        v17 = v16;
        [(MRPlaybackQueueRequest *)self artworkHeight];
        if (v17 != v18)
        {
          goto LABEL_66;
        }
      }
    }

    hasIncludeLyrics = [(MRPlaybackQueueRequest *)equalCopy hasIncludeLyrics];
    if (hasIncludeLyrics != [(MRPlaybackQueueRequest *)self hasIncludeLyrics])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasIncludeLyrics])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeLyrics])
      {
        includeLyrics = [(MRPlaybackQueueRequest *)equalCopy includeLyrics];
        if (includeLyrics != [(MRPlaybackQueueRequest *)self includeLyrics])
        {
          goto LABEL_66;
        }
      }
    }

    hasIncludeSections = [(MRPlaybackQueueRequest *)equalCopy hasIncludeSections];
    if (hasIncludeSections != [(MRPlaybackQueueRequest *)self hasIncludeSections])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasIncludeSections])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeSections])
      {
        includeSections = [(MRPlaybackQueueRequest *)equalCopy includeSections];
        if (includeSections != [(MRPlaybackQueueRequest *)self includeSections])
        {
          goto LABEL_66;
        }
      }
    }

    hasIncludeInfo = [(MRPlaybackQueueRequest *)equalCopy hasIncludeInfo];
    if (hasIncludeInfo != [(MRPlaybackQueueRequest *)self hasIncludeInfo])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasIncludeInfo])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeInfo])
      {
        includeInfo = [(MRPlaybackQueueRequest *)equalCopy includeInfo];
        if (includeInfo != [(MRPlaybackQueueRequest *)self includeInfo])
        {
          goto LABEL_66;
        }
      }
    }

    hasIncludeAlignments = [(MRPlaybackQueueRequest *)equalCopy hasIncludeAlignments];
    if (hasIncludeAlignments != [(MRPlaybackQueueRequest *)self hasIncludeAlignments])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasIncludeAlignments])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeAlignments])
      {
        includeAlignments = [(MRPlaybackQueueRequest *)equalCopy includeAlignments];
        if (includeAlignments != [(MRPlaybackQueueRequest *)self includeAlignments])
        {
          goto LABEL_66;
        }
      }
    }

    hasIncludeLanguageOptions = [(MRPlaybackQueueRequest *)equalCopy hasIncludeLanguageOptions];
    if (hasIncludeLanguageOptions != [(MRPlaybackQueueRequest *)self hasIncludeLanguageOptions])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasIncludeLanguageOptions])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeLanguageOptions])
      {
        includeLanguageOptions = [(MRPlaybackQueueRequest *)equalCopy includeLanguageOptions];
        if (includeLanguageOptions != [(MRPlaybackQueueRequest *)self includeLanguageOptions])
        {
          goto LABEL_66;
        }
      }
    }

    hasIncludeAvailableArtworkFormats = [(MRPlaybackQueueRequest *)equalCopy hasIncludeAvailableArtworkFormats];
    if (hasIncludeAvailableArtworkFormats != [(MRPlaybackQueueRequest *)self hasIncludeAvailableArtworkFormats])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasIncludeAvailableArtworkFormats])
    {
      if ([(MRPlaybackQueueRequest *)self hasIncludeAvailableArtworkFormats])
      {
        includeAvailableArtworkFormats = [(MRPlaybackQueueRequest *)equalCopy includeAvailableArtworkFormats];
        if (includeAvailableArtworkFormats != [(MRPlaybackQueueRequest *)self includeAvailableArtworkFormats])
        {
          goto LABEL_66;
        }
      }
    }

    hasLegacyNowPlayingInfoRequest = [(MRPlaybackQueueRequest *)equalCopy hasLegacyNowPlayingInfoRequest];
    if (hasLegacyNowPlayingInfoRequest != [(MRPlaybackQueueRequest *)self hasLegacyNowPlayingInfoRequest])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasLegacyNowPlayingInfoRequest])
    {
      if ([(MRPlaybackQueueRequest *)self hasLegacyNowPlayingInfoRequest])
      {
        isLegacyNowPlayingInfoRequest = [(MRPlaybackQueueRequest *)equalCopy isLegacyNowPlayingInfoRequest];
        if (isLegacyNowPlayingInfoRequest != [(MRPlaybackQueueRequest *)self isLegacyNowPlayingInfoRequest])
        {
          goto LABEL_66;
        }
      }
    }

    hasCachingPolicy = [(MRPlaybackQueueRequest *)equalCopy hasCachingPolicy];
    if (hasCachingPolicy != [(MRPlaybackQueueRequest *)self hasCachingPolicy])
    {
      goto LABEL_66;
    }

    if ([(MRPlaybackQueueRequest *)equalCopy hasCachingPolicy])
    {
      if ([(MRPlaybackQueueRequest *)self hasCachingPolicy])
      {
        cachingPolicy = [(MRPlaybackQueueRequest *)equalCopy cachingPolicy];
        if (cachingPolicy != [(MRPlaybackQueueRequest *)self cachingPolicy])
        {
          goto LABEL_66;
        }
      }
    }

    playerPath = [(MRPlaybackQueueRequest *)equalCopy playerPath];
    playerPath2 = [(MRPlaybackQueueRequest *)self playerPath];
    v37 = playerPath2;
    if (playerPath == playerPath2)
    {
    }

    else
    {
      playerPath3 = [(MRPlaybackQueueRequest *)equalCopy playerPath];
      playerPath4 = [(MRPlaybackQueueRequest *)self playerPath];
      v40 = [playerPath3 isEqual:playerPath4];

      if (!v40)
      {
        goto LABEL_66;
      }
    }

    requestIdentifier = [(MRPlaybackQueueRequest *)equalCopy requestIdentifier];
    requestIdentifier2 = [(MRPlaybackQueueRequest *)self requestIdentifier];
    v44 = requestIdentifier2;
    if (requestIdentifier == requestIdentifier2)
    {
    }

    else
    {
      requestIdentifier3 = [(MRPlaybackQueueRequest *)equalCopy requestIdentifier];
      requestIdentifier4 = [(MRPlaybackQueueRequest *)self requestIdentifier];
      v47 = [requestIdentifier3 isEqualToString:requestIdentifier4];

      if (!v47)
      {
        goto LABEL_66;
      }
    }

    label = [(MRPlaybackQueueRequest *)equalCopy label];
    label2 = [(MRPlaybackQueueRequest *)self label];
    v50 = label2;
    if (label == label2)
    {
    }

    else
    {
      label3 = [(MRPlaybackQueueRequest *)equalCopy label];
      label4 = [(MRPlaybackQueueRequest *)self label];
      v53 = [label3 isEqualToString:label4];

      if (!v53)
      {
LABEL_66:
        v41 = 0;
        goto LABEL_67;
      }
    }

    contentItemIdentifiers = [(MRPlaybackQueueRequest *)equalCopy contentItemIdentifiers];
    contentItemIdentifiers2 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
    if (contentItemIdentifiers == contentItemIdentifiers2)
    {
      v41 = 1;
    }

    else
    {
      contentItemIdentifiers3 = [(MRPlaybackQueueRequest *)equalCopy contentItemIdentifiers];
      contentItemIdentifiers4 = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
      v41 = [contentItemIdentifiers3 isEqualToArray:contentItemIdentifiers4];
    }
  }

LABEL_67:

  return v41 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  requestedArtworkFormats = [(MRPlaybackQueueRequest *)self requestedArtworkFormats];
  [v5 setRequestedArtworkFormats:requestedArtworkFormats];

  requestedRemoteArtworkFormats = [(MRPlaybackQueueRequest *)self requestedRemoteArtworkFormats];
  [v5 setRequestedRemoteArtworkFormats:requestedRemoteArtworkFormats];

  requestedAnimatedArtworkPreviewFrameFormats = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkPreviewFrameFormats];
  [v5 setRequestedAnimatedArtworkPreviewFrameFormats:requestedAnimatedArtworkPreviewFrameFormats];

  requestedAnimatedArtworkAssetURLFormats = [(MRPlaybackQueueRequest *)self requestedAnimatedArtworkAssetURLFormats];
  [v5 setRequestedAnimatedArtworkAssetURLFormats:requestedAnimatedArtworkAssetURLFormats];

  [v5 setLegacyNowPlayingInfoRequest:{-[MRPlaybackQueueRequest isLegacyNowPlayingInfoRequest](self, "isLegacyNowPlayingInfoRequest")}];
  [v5 setHasLegacyNowPlayingInfoRequest:{-[MRPlaybackQueueRequest isLegacyNowPlayingInfoRequest](self, "isLegacyNowPlayingInfoRequest")}];
  [v5 setCachingPolicy:{-[MRPlaybackQueueRequest cachingPolicy](self, "cachingPolicy")}];
  [v5 setHasCachingPolicy:{-[MRPlaybackQueueRequest cachingPolicy](self, "cachingPolicy") != 0}];
  playerPath = [(MRPlaybackQueueRequest *)self playerPath];
  v11 = [playerPath copyWithZone:zone];
  [v5 setPlayerPath:v11];

  requestIdentifier = [(MRPlaybackQueueRequest *)self requestIdentifier];
  v13 = [requestIdentifier copyWithZone:zone];
  [v5 setRequestIdentifier:v13];

  label = [(MRPlaybackQueueRequest *)self label];
  v15 = [label copyWithZone:zone];
  [v5 setLabel:v15];

  contentItemIdentifiers = [(MRPlaybackQueueRequest *)self contentItemIdentifiers];
  v17 = [contentItemIdentifiers copyWithZone:zone];
  [v5 setContentItemIdentifiers:v17];

  return v5;
}

- (MRPlaybackQueueRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(MRPlaybackQueueRequest *)self protobuf];
  [coderCopy encodeObject:protobuf forKey:@"protobuf"];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy includeMetadata])
  {
    -[MRPlaybackQueueRequest setIncludeMetadata:](self, "setIncludeMetadata:", [fromCopy includeMetadata]);
  }

  if ([fromCopy includeInfo])
  {
    -[MRPlaybackQueueRequest setIncludeInfo:](self, "setIncludeInfo:", [fromCopy includeInfo]);
  }

  if ([fromCopy includeAlignments])
  {
    -[MRPlaybackQueueRequest setIncludeAlignments:](self, "setIncludeAlignments:", [fromCopy includeAlignments]);
  }

  if ([fromCopy includeLyrics])
  {
    -[MRPlaybackQueueRequest setIncludeLyrics:](self, "setIncludeLyrics:", [fromCopy includeLyrics]);
  }

  if ([fromCopy includeSections])
  {
    -[MRPlaybackQueueRequest setIncludeSections:](self, "setIncludeSections:", [fromCopy includeSections]);
  }

  if ([fromCopy includeLanguageOptions])
  {
    -[MRPlaybackQueueRequest setIncludeLanguageOptions:](self, "setIncludeLanguageOptions:", [fromCopy includeLanguageOptions]);
  }

  if ([fromCopy hasArtworkWidth])
  {
    [fromCopy artworkWidth];
    [(MRPlaybackQueueRequest *)self setArtworkWidth:?];
  }

  if ([fromCopy hasArtworkHeight])
  {
    [fromCopy artworkHeight];
    [(MRPlaybackQueueRequest *)self setArtworkHeight:?];
  }

  if ([fromCopy hasIncludeAvailableArtworkFormats])
  {
    -[MRPlaybackQueueRequest setIncludeAvailableArtworkFormats:](self, "setIncludeAvailableArtworkFormats:", [fromCopy includeAvailableArtworkFormats]);
  }

  requestedArtworkFormats = [fromCopy requestedArtworkFormats];
  v5 = [requestedArtworkFormats count];

  if (v5)
  {
    requestedArtworkFormats2 = [fromCopy requestedArtworkFormats];
    [(MRPlaybackQueueRequest *)self setRequestedArtworkFormats:requestedArtworkFormats2];
  }

  requestedRemoteArtworkFormats = [fromCopy requestedRemoteArtworkFormats];
  v8 = [requestedRemoteArtworkFormats count];

  if (v8)
  {
    requestedRemoteArtworkFormats2 = [fromCopy requestedRemoteArtworkFormats];
    [(MRPlaybackQueueRequest *)self setRequestedRemoteArtworkFormats:requestedRemoteArtworkFormats2];
  }

  requestedAnimatedArtworkPreviewFrameFormats = [fromCopy requestedAnimatedArtworkPreviewFrameFormats];
  v11 = [requestedAnimatedArtworkPreviewFrameFormats count];

  if (v11)
  {
    requestedAnimatedArtworkPreviewFrameFormats2 = [fromCopy requestedAnimatedArtworkPreviewFrameFormats];
    [(MRPlaybackQueueRequest *)self setRequestedAnimatedArtworkPreviewFrameFormats:requestedAnimatedArtworkPreviewFrameFormats2];
  }

  requestedAnimatedArtworkAssetURLFormats = [fromCopy requestedAnimatedArtworkAssetURLFormats];
  v14 = [requestedAnimatedArtworkAssetURLFormats count];

  if (v14)
  {
    requestedAnimatedArtworkAssetURLFormats2 = [fromCopy requestedAnimatedArtworkAssetURLFormats];
    [(MRPlaybackQueueRequest *)self setRequestedAnimatedArtworkAssetURLFormats:requestedAnimatedArtworkAssetURLFormats2];
  }
}

- (BOOL)match:(id)match
{
  matchCopy = match;
  includeMetadata = [(MRPlaybackQueueRequest *)self includeMetadata];
  if (includeMetadata == [matchCopy includeMetadata] || (v6 = -[MRPlaybackQueueRequest includeInfo](self, "includeInfo"), v6 == objc_msgSend(matchCopy, "includeInfo")) || (v7 = -[MRPlaybackQueueRequest includeAlignments](self, "includeAlignments"), v7 == objc_msgSend(matchCopy, "includeAlignments")) || (v8 = -[MRPlaybackQueueRequest includeLyrics](self, "includeLyrics"), v8 == objc_msgSend(matchCopy, "includeLyrics")) || (v9 = -[MRPlaybackQueueRequest includeLanguageOptions](self, "includeLanguageOptions"), v9 == objc_msgSend(matchCopy, "includeLanguageOptions")) || (v10 = -[MRPlaybackQueueRequest includeSections](self, "includeSections"), v10 == objc_msgSend(matchCopy, "includeSections")))
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    includeArtwork = [(MRPlaybackQueueRequest *)self includeArtwork];
    v12 = includeArtwork ^ [matchCopy includeArtwork] ^ 1;
  }

  return v12;
}

- (BOOL)exactMatch:(id)match
{
  matchCopy = match;
  v5 = matchCopy;
  if (matchCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else if (matchCopy && (v6 = [(MRPlaybackQueueRequest *)self includeMetadata], v6 == [(MRPlaybackQueueRequest *)v5 includeMetadata]) && (v7 = [(MRPlaybackQueueRequest *)self includeInfo], v7 == [(MRPlaybackQueueRequest *)v5 includeInfo]) && (v8 = [(MRPlaybackQueueRequest *)self includeAlignments], v8 == [(MRPlaybackQueueRequest *)v5 includeAlignments]) && (v9 = [(MRPlaybackQueueRequest *)self includeLyrics], v9 == [(MRPlaybackQueueRequest *)v5 includeLyrics]) && (v10 = [(MRPlaybackQueueRequest *)self includeLanguageOptions], v10 == [(MRPlaybackQueueRequest *)v5 includeLanguageOptions]) && (v11 = [(MRPlaybackQueueRequest *)self includeSections], v11 == [(MRPlaybackQueueRequest *)v5 includeSections]))
  {
    includeArtwork = [(MRPlaybackQueueRequest *)self includeArtwork];
    v12 = includeArtwork ^ [(MRPlaybackQueueRequest *)v5 includeArtwork]^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)performRequestForDestination:(id)destination completion:(id)completion
{
  completionCopy = completion;
  destinationCopy = destination;
  v8 = [[MRNowPlayingControllerConfiguration alloc] initWithDestination:destinationCopy];

  [(MRNowPlayingControllerConfiguration *)v8 setPlaybackQueueRequest:self];
  [(MRNowPlayingControllerConfiguration *)v8 setLabel:@"performPlaybackQueueRequest"];
  v9 = [[MRNowPlayingController alloc] initWithConfiguration:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__MRPlaybackQueueRequest_performRequestForDestination_completion___block_invoke;
  v11[3] = &unk_1E769E230;
  v12 = completionCopy;
  v10 = completionCopy;
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
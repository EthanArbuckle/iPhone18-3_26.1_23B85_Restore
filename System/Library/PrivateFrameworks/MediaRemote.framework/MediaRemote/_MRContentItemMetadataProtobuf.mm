@interface _MRContentItemMetadataProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActiveFormatJustification:(id)justification;
- (int)StringAsAlbumTraits:(id)traits;
- (int)StringAsFormatTierPreference:(id)preference;
- (int)StringAsPlaylistTraits:(id)traits;
- (int)StringAsSongTraits:(id)traits;
- (int)activeFormatJustification;
- (int)albumTraits;
- (int)formatTierPreference;
- (int)playlistTraits;
- (int)songTraits;
- (unint64_t)hash;
- (void)addAlternativeFormats:(id)formats;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActiveFormatJustification:(BOOL)justification;
- (void)setHasAlbumTraits:(BOOL)traits;
- (void)setHasArtworkAvailable:(BOOL)available;
- (void)setHasArtworkDataHeightDeprecated:(BOOL)deprecated;
- (void)setHasArtworkDataWidthDeprecated:(BOOL)deprecated;
- (void)setHasChapterCount:(BOOL)count;
- (void)setHasDefaultPlaybackRate:(BOOL)rate;
- (void)setHasDiscNumber:(BOOL)number;
- (void)setHasDownloadProgress:(BOOL)progress;
- (void)setHasDownloadState:(BOOL)state;
- (void)setHasEditingStyleFlags:(BOOL)flags;
- (void)setHasElapsedTime:(BOOL)time;
- (void)setHasElapsedTimeTimestamp:(BOOL)timestamp;
- (void)setHasEpisodeNumber:(BOOL)number;
- (void)setHasEpisodeType:(BOOL)type;
- (void)setHasExcludeFromSuggestions:(BOOL)suggestions;
- (void)setHasFormatTierPreference:(BOOL)preference;
- (void)setHasHasAlternativeFormats:(BOOL)formats;
- (void)setHasITunesStoreAlbumArtistIdentifier:(BOOL)identifier;
- (void)setHasITunesStoreAlbumIdentifier:(BOOL)identifier;
- (void)setHasITunesStoreArtistIdentifier:(BOOL)identifier;
- (void)setHasITunesStoreIdentifier:(BOOL)identifier;
- (void)setHasITunesStoreSubscriptionIdentifier:(BOOL)identifier;
- (void)setHasInferredTimestamp:(BOOL)timestamp;
- (void)setHasInfoAvailable:(BOOL)available;
- (void)setHasIsAdvertisement:(BOOL)advertisement;
- (void)setHasIsAlwaysLive:(BOOL)live;
- (void)setHasIsContainer:(BOOL)container;
- (void)setHasIsCurrentlyPlaying:(BOOL)playing;
- (void)setHasIsExplicitItem:(BOOL)item;
- (void)setHasIsInTransition:(BOOL)transition;
- (void)setHasIsInWishList:(BOOL)list;
- (void)setHasIsLiked:(BOOL)liked;
- (void)setHasIsLoading:(BOOL)loading;
- (void)setHasIsPlayable:(BOOL)playable;
- (void)setHasIsResolvableParticipant:(BOOL)participant;
- (void)setHasIsSharable:(BOOL)sharable;
- (void)setHasIsSteerable:(BOOL)steerable;
- (void)setHasIsStreamingContent:(BOOL)content;
- (void)setHasLanguageOptionsAvailable:(BOOL)available;
- (void)setHasLegacyUniqueIdentifier:(BOOL)identifier;
- (void)setHasLyricsAdamID:(BOOL)d;
- (void)setHasLyricsAvailable:(BOOL)available;
- (void)setHasMediaSubType:(BOOL)type;
- (void)setHasMediaType:(BOOL)type;
- (void)setHasNumberOfSections:(BOOL)sections;
- (void)setHasPlayCount:(BOOL)count;
- (void)setHasPlaybackProgress:(BOOL)progress;
- (void)setHasPlaybackRate:(BOOL)rate;
- (void)setHasPlaylistTraits:(BOOL)traits;
- (void)setHasPlaylistType:(BOOL)type;
- (void)setHasRadioStationIdentifier:(BOOL)identifier;
- (void)setHasRadioStationType:(BOOL)type;
- (void)setHasReleaseDate:(BOOL)date;
- (void)setHasReportingAdamID:(BOOL)d;
- (void)setHasSeasonNumber:(BOOL)number;
- (void)setHasSongTraits:(BOOL)traits;
- (void)setHasStartTime:(BOOL)time;
- (void)setHasTotalDiscCount:(BOOL)count;
- (void)setHasTotalTrackCount:(BOOL)count;
- (void)setHasTrackNumber:(BOOL)number;
- (void)setHasTranscriptAlignmentsAvailable:(BOOL)available;
- (void)writeTo:(id)to;
@end

@implementation _MRContentItemMetadataProtobuf

- (int)songTraits
{
  if ((*(&self->_has + 4) & 0x40) != 0)
  {
    return self->_songTraits;
  }

  else
  {
    return 0;
  }
}

- (int)albumTraits
{
  if (*(&self->_has + 2))
  {
    return self->_albumTraits;
  }

  else
  {
    return 0;
  }
}

- (int)playlistTraits
{
  if ((*(&self->_has + 4) & 4) != 0)
  {
    return self->_playlistTraits;
  }

  else
  {
    return 0;
  }
}

- (int)activeFormatJustification
{
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    return self->_activeFormatJustification;
  }

  else
  {
    return 0;
  }
}

- (int)formatTierPreference
{
  if ((*(&self->_has + 3) & 8) != 0)
  {
    return self->_formatTierPreference;
  }

  else
  {
    return 1;
  }
}

- (void)setHasIsContainer:(BOOL)container
{
  v3 = 0x1000000000000;
  if (!container)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsPlayable:(BOOL)playable
{
  v3 = 0x80000000000000;
  if (!playable)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3);
}

- (void)setHasPlaybackProgress:(BOOL)progress
{
  v3 = 0x100000000;
  if (!progress)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasSeasonNumber:(BOOL)number
{
  v3 = 0x2000000000;
  if (!number)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasEpisodeNumber:(BOOL)number
{
  v3 = 0x2000000;
  if (!number)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasReleaseDate:(BOOL)date
{
  v3 = 4096;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasPlayCount:(BOOL)count
{
  v3 = 0x80000000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasIsExplicitItem:(BOOL)item
{
  v3 = 0x4000000000000;
  if (!item)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (void)setHasPlaylistType:(BOOL)type
{
  v3 = 0x800000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasRadioStationType:(BOOL)type
{
  v3 = 0x1000000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasArtworkAvailable:(BOOL)available
{
  v3 = 0x40000000000;
  if (!available)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasInfoAvailable:(BOOL)available
{
  v3 = 0x200000000000;
  if (!available)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasLanguageOptionsAvailable:(BOOL)available
{
  v3 = 0x1000000000000000;
  if (!available)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasNumberOfSections:(BOOL)sections
{
  v3 = 0x40000000;
  if (!sections)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasLyricsAvailable:(BOOL)available
{
  v3 = 0x2000000000000000;
  if (!available)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasEditingStyleFlags:(BOOL)flags
{
  v3 = 0x1000000;
  if (!flags)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasIsStreamingContent:(BOOL)content
{
  v3 = 0x800000000000000;
  if (!content)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsCurrentlyPlaying:(BOOL)playing
{
  v3 = 0x2000000000000;
  if (!playing)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (void)setHasStartTime:(BOOL)time
{
  v3 = 0x4000;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasDiscNumber:(BOOL)number
{
  v3 = 0x200000;
  if (!number)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasElapsedTime:(BOOL)time
{
  v3 = 2;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasIsAlwaysLive:(BOOL)live
{
  v3 = 0x800000000000;
  if (!live)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (void)setHasPlaybackRate:(BOOL)rate
{
  v3 = 0x200000000;
  if (!rate)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasChapterCount:(BOOL)count
{
  v3 = 0x80000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasTotalDiscCount:(BOOL)count
{
  v3 = 0x8000000000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasTotalTrackCount:(BOOL)count
{
  v3 = 0x10000000000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasTrackNumber:(BOOL)number
{
  v3 = 0x20000000000;
  if (!number)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasIsSharable:(BOOL)sharable
{
  v3 = 0x200000000000000;
  if (!sharable)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsLiked:(BOOL)liked
{
  v3 = 0x20000000000000;
  if (!liked)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsInWishList:(BOOL)list
{
  v3 = 0x10000000000000;
  if (!list)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3);
}

- (void)setHasRadioStationIdentifier:(BOOL)identifier
{
  v3 = 2048;
  if (!identifier)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasITunesStoreIdentifier:(BOOL)identifier
{
  v3 = 64;
  if (!identifier)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasITunesStoreSubscriptionIdentifier:(BOOL)identifier
{
  v3 = 128;
  if (!identifier)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasITunesStoreArtistIdentifier:(BOOL)identifier
{
  v3 = 32;
  if (!identifier)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasITunesStoreAlbumIdentifier:(BOOL)identifier
{
  v3 = 16;
  if (!identifier)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasDefaultPlaybackRate:(BOOL)rate
{
  v3 = 0x100000;
  if (!rate)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasDownloadState:(BOOL)state
{
  v3 = 0x800000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasDownloadProgress:(BOOL)progress
{
  v3 = 0x400000;
  if (!progress)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasMediaType:(BOOL)type
{
  v3 = 0x20000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasMediaSubType:(BOOL)type
{
  v3 = 0x10000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasIsSteerable:(BOOL)steerable
{
  v3 = 0x400000000000000;
  if (!steerable)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasElapsedTimeTimestamp:(BOOL)timestamp
{
  v3 = 4;
  if (!timestamp)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasInferredTimestamp:(BOOL)timestamp
{
  v3 = 256;
  if (!timestamp)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasArtworkDataWidthDeprecated:(BOOL)deprecated
{
  v3 = 0x40000;
  if (!deprecated)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasArtworkDataHeightDeprecated:(BOOL)deprecated
{
  v3 = 0x20000;
  if (!deprecated)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasIsLoading:(BOOL)loading
{
  v3 = 0x40000000000000;
  if (!loading)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3);
}

- (void)setHasLegacyUniqueIdentifier:(BOOL)identifier
{
  v3 = 512;
  if (!identifier)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasEpisodeType:(BOOL)type
{
  v3 = 0x4000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasSongTraits:(BOOL)traits
{
  v3 = 0x4000000000;
  if (!traits)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (int)StringAsSongTraits:(id)traits
{
  traitsCopy = traits;
  if ([traitsCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([traitsCopy isEqualToString:@"AppleDigitalMaster"])
  {
    v4 = 1;
  }

  else if ([traitsCopy isEqualToString:@"Loseless"])
  {
    v4 = 2;
  }

  else if ([traitsCopy isEqualToString:@"HighResolutionLossless"])
  {
    v4 = 4;
  }

  else if ([traitsCopy isEqualToString:@"Spatial"])
  {
    v4 = 8;
  }

  else if ([traitsCopy isEqualToString:@"Atmos"])
  {
    v4 = 16;
  }

  else if ([traitsCopy isEqualToString:@"Surround"])
  {
    v4 = 32;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasAlbumTraits:(BOOL)traits
{
  v3 = 0x10000;
  if (!traits)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (int)StringAsAlbumTraits:(id)traits
{
  traitsCopy = traits;
  if ([traitsCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([traitsCopy isEqualToString:@"AppleDigitalMaster"])
  {
    v4 = 1;
  }

  else if ([traitsCopy isEqualToString:@"Loseless"])
  {
    v4 = 2;
  }

  else if ([traitsCopy isEqualToString:@"HighResolutionLossless"])
  {
    v4 = 4;
  }

  else if ([traitsCopy isEqualToString:@"Spatial"])
  {
    v4 = 8;
  }

  else if ([traitsCopy isEqualToString:@"Atmos"])
  {
    v4 = 16;
  }

  else if ([traitsCopy isEqualToString:@"Surround"])
  {
    v4 = 32;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPlaylistTraits:(BOOL)traits
{
  v3 = 0x400000000;
  if (!traits)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (int)StringAsPlaylistTraits:(id)traits
{
  traitsCopy = traits;
  if ([traitsCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([traitsCopy isEqualToString:@"Spatial"])
  {
    v4 = 8;
  }

  else if ([traitsCopy isEqualToString:@"Atmos"])
  {
    v4 = 16;
  }

  else if ([traitsCopy isEqualToString:@"Surround"])
  {
    v4 = 32;
  }

  else if ([traitsCopy isEqualToString:@"Sing"])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasActiveFormatJustification:(BOOL)justification
{
  v3 = 0x8000;
  if (!justification)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (int)StringAsActiveFormatJustification:(id)justification
{
  justificationCopy = justification;
  if ([justificationCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([justificationCopy isEqualToString:@"Unavailable"])
  {
    v4 = 1;
  }

  else if ([justificationCopy isEqualToString:@"UserPreference"])
  {
    v4 = 100;
  }

  else if ([justificationCopy isEqualToString:@"UserDownload"])
  {
    v4 = 101;
  }

  else if ([justificationCopy isEqualToString:@"RouteIncompatible"])
  {
    v4 = 500;
  }

  else if ([justificationCopy isEqualToString:@"RouteUnknownCompatibility"])
  {
    v4 = 501;
  }

  else if ([justificationCopy isEqualToString:@"BandwidthInsufficient"])
  {
    v4 = 1000;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasFormatTierPreference:(BOOL)preference
{
  v3 = 0x8000000;
  if (!preference)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (int)StringAsFormatTierPreference:(id)preference
{
  preferenceCopy = preference;
  if ([preferenceCopy isEqualToString:@"LowBandwidthStereo"])
  {
    v4 = 1;
  }

  else if ([preferenceCopy isEqualToString:@"HighQualityStereo"])
  {
    v4 = 2;
  }

  else if ([preferenceCopy isEqualToString:@"Lossless"])
  {
    v4 = 4;
  }

  else if ([preferenceCopy isEqualToString:@"HighResolutionLossless"])
  {
    v4 = 8;
  }

  else if ([preferenceCopy isEqualToString:@"Spatial"])
  {
    v4 = 16;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addAlternativeFormats:(id)formats
{
  formatsCopy = formats;
  alternativeFormats = self->_alternativeFormats;
  v8 = formatsCopy;
  if (!alternativeFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_alternativeFormats;
    self->_alternativeFormats = v6;

    formatsCopy = v8;
    alternativeFormats = self->_alternativeFormats;
  }

  [(NSMutableArray *)alternativeFormats addObject:formatsCopy];
}

- (void)setHasIsAdvertisement:(BOOL)advertisement
{
  v3 = 0x400000000000;
  if (!advertisement)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasHasAlternativeFormats:(BOOL)formats
{
  v3 = 0x100000000000;
  if (!formats)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasReportingAdamID:(BOOL)d
{
  v3 = 0x2000;
  if (!d)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasLyricsAdamID:(BOOL)d
{
  v3 = 1024;
  if (!d)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasITunesStoreAlbumArtistIdentifier:(BOOL)identifier
{
  v3 = 8;
  if (!identifier)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasIsResolvableParticipant:(BOOL)participant
{
  v3 = 0x100000000000000;
  if (!participant)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsInTransition:(BOOL)transition
{
  v3 = 0x8000000000000;
  if (!transition)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3);
}

- (void)setHasExcludeFromSuggestions:(BOOL)suggestions
{
  v3 = 0x80000000000;
  if (!suggestions)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasTranscriptAlignmentsAvailable:(BOOL)available
{
  v3 = 0x4000000000000000;
  if (!available)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRContentItemMetadataProtobuf;
  v4 = [(_MRContentItemMetadataProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRContentItemMetadataProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v152 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v5 setObject:subtitle forKey:@"subtitle"];
  }

  has = self->_has;
  if ((*&has & 0x1000000000000) != 0)
  {
    v72 = [MEMORY[0x1E696AD98] numberWithBool:self->_isContainer];
    [v5 setObject:v72 forKey:@"isContainer"];

    has = self->_has;
    if ((*&has & 0x80000000000000) == 0)
    {
LABEL_7:
      if ((*&has & 0x100000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&has & 0x80000000000000) == 0)
  {
    goto LABEL_7;
  }

  v73 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPlayable];
  [v5 setObject:v73 forKey:@"isPlayable"];

  if ((*&self->_has & 0x100000000) != 0)
  {
LABEL_8:
    *&v4 = self->_playbackProgress;
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v9 forKey:@"playbackProgress"];
  }

LABEL_9:
  albumName = self->_albumName;
  if (albumName)
  {
    [v5 setObject:albumName forKey:@"albumName"];
  }

  trackArtistName = self->_trackArtistName;
  if (trackArtistName)
  {
    [v5 setObject:trackArtistName forKey:@"trackArtistName"];
  }

  albumArtistName = self->_albumArtistName;
  if (albumArtistName)
  {
    [v5 setObject:albumArtistName forKey:@"albumArtistName"];
  }

  directorName = self->_directorName;
  if (directorName)
  {
    [v5 setObject:directorName forKey:@"directorName"];
  }

  v14 = self->_has;
  if ((*&v14 & 0x2000000000) != 0)
  {
    v74 = [MEMORY[0x1E696AD98] numberWithInt:self->_seasonNumber];
    [v5 setObject:v74 forKey:@"seasonNumber"];

    v14 = self->_has;
    if ((*&v14 & 0x2000000) == 0)
    {
LABEL_19:
      if ((*&v14 & 0x1000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_145;
    }
  }

  else if ((*&v14 & 0x2000000) == 0)
  {
    goto LABEL_19;
  }

  v75 = [MEMORY[0x1E696AD98] numberWithInt:self->_episodeNumber];
  [v5 setObject:v75 forKey:@"episodeNumber"];

  v14 = self->_has;
  if ((*&v14 & 0x1000) == 0)
  {
LABEL_20:
    if ((*&v14 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_146;
  }

LABEL_145:
  v76 = [MEMORY[0x1E696AD98] numberWithDouble:self->_releaseDate];
  [v5 setObject:v76 forKey:@"releaseDate"];

  v14 = self->_has;
  if ((*&v14 & 0x80000000) == 0)
  {
LABEL_21:
    if ((*&v14 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_146:
  v77 = [MEMORY[0x1E696AD98] numberWithInt:self->_playCount];
  [v5 setObject:v77 forKey:@"playCount"];

  if (*&self->_has)
  {
LABEL_22:
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
    [v5 setObject:v15 forKey:@"duration"];
  }

LABEL_23:
  localizedContentRating = self->_localizedContentRating;
  if (localizedContentRating)
  {
    [v5 setObject:localizedContentRating forKey:@"localizedContentRating"];
  }

  v17 = self->_has;
  if ((*&v17 & 0x4000000000000) != 0)
  {
    v78 = [MEMORY[0x1E696AD98] numberWithBool:self->_isExplicitItem];
    [v5 setObject:v78 forKey:@"isExplicitItem"];

    v17 = self->_has;
    if ((*&v17 & 0x800000000) == 0)
    {
LABEL_27:
      if ((*&v17 & 0x1000000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_150;
    }
  }

  else if ((*&v17 & 0x800000000) == 0)
  {
    goto LABEL_27;
  }

  v79 = [MEMORY[0x1E696AD98] numberWithInt:self->_playlistType];
  [v5 setObject:v79 forKey:@"playlistType"];

  v17 = self->_has;
  if ((*&v17 & 0x1000000000) == 0)
  {
LABEL_28:
    if ((*&v17 & 0x40000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_151;
  }

LABEL_150:
  v80 = [MEMORY[0x1E696AD98] numberWithInt:self->_radioStationType];
  [v5 setObject:v80 forKey:@"radioStationType"];

  v17 = self->_has;
  if ((*&v17 & 0x40000000000) == 0)
  {
LABEL_29:
    if ((*&v17 & 0x200000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_152;
  }

LABEL_151:
  v81 = [MEMORY[0x1E696AD98] numberWithBool:self->_artworkAvailable];
  [v5 setObject:v81 forKey:@"artworkAvailable"];

  v17 = self->_has;
  if ((*&v17 & 0x200000000000) == 0)
  {
LABEL_30:
    if ((*&v17 & 0x1000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_153;
  }

LABEL_152:
  v82 = [MEMORY[0x1E696AD98] numberWithBool:self->_infoAvailable];
  [v5 setObject:v82 forKey:@"infoAvailable"];

  v17 = self->_has;
  if ((*&v17 & 0x1000000000000000) == 0)
  {
LABEL_31:
    if ((*&v17 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_154;
  }

LABEL_153:
  v83 = [MEMORY[0x1E696AD98] numberWithBool:self->_languageOptionsAvailable];
  [v5 setObject:v83 forKey:@"languageOptionsAvailable"];

  v17 = self->_has;
  if ((*&v17 & 0x40000000) == 0)
  {
LABEL_32:
    if ((*&v17 & 0x2000000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_155;
  }

LABEL_154:
  v84 = [MEMORY[0x1E696AD98] numberWithInt:self->_numberOfSections];
  [v5 setObject:v84 forKey:@"numberOfSections"];

  v17 = self->_has;
  if ((*&v17 & 0x2000000000000000) == 0)
  {
LABEL_33:
    if ((*&v17 & 0x1000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_156;
  }

LABEL_155:
  v85 = [MEMORY[0x1E696AD98] numberWithBool:self->_lyricsAvailable];
  [v5 setObject:v85 forKey:@"lyricsAvailable"];

  v17 = self->_has;
  if ((*&v17 & 0x1000000) == 0)
  {
LABEL_34:
    if ((*&v17 & 0x800000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_157;
  }

LABEL_156:
  v86 = [MEMORY[0x1E696AD98] numberWithInt:self->_editingStyleFlags];
  [v5 setObject:v86 forKey:@"editingStyleFlags"];

  v17 = self->_has;
  if ((*&v17 & 0x800000000000000) == 0)
  {
LABEL_35:
    if ((*&v17 & 0x2000000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_157:
  v87 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStreamingContent];
  [v5 setObject:v87 forKey:@"isStreamingContent"];

  if ((*&self->_has & 0x2000000000000) != 0)
  {
LABEL_36:
    v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCurrentlyPlaying];
    [v5 setObject:v18 forKey:@"isCurrentlyPlaying"];
  }

LABEL_37:
  collectionIdentifier = self->_collectionIdentifier;
  if (collectionIdentifier)
  {
    [v5 setObject:collectionIdentifier forKey:@"collectionIdentifier"];
  }

  profileIdentifier = self->_profileIdentifier;
  if (profileIdentifier)
  {
    [v5 setObject:profileIdentifier forKey:@"profileIdentifier"];
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
    [v5 setObject:v21 forKey:@"startTime"];
  }

  artworkMIMEType = self->_artworkMIMEType;
  if (artworkMIMEType)
  {
    [v5 setObject:artworkMIMEType forKey:@"artworkMIMEType"];
  }

  assetURLString = self->_assetURLString;
  if (assetURLString)
  {
    [v5 setObject:assetURLString forKey:@"assetURLString"];
  }

  composer = self->_composer;
  if (composer)
  {
    [v5 setObject:composer forKey:@"composer"];
  }

  v25 = self->_has;
  if ((*&v25 & 0x200000) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInt:self->_discNumber];
    [v5 setObject:v26 forKey:@"discNumber"];

    v25 = self->_has;
  }

  if ((*&v25 & 2) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_elapsedTime];
    [v5 setObject:v27 forKey:@"elapsedTime"];
  }

  genre = self->_genre;
  if (genre)
  {
    [v5 setObject:genre forKey:@"genre"];
  }

  v29 = self->_has;
  if ((*&v29 & 0x800000000000) != 0)
  {
    v88 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAlwaysLive];
    [v5 setObject:v88 forKey:@"isAlwaysLive"];

    v29 = self->_has;
    if ((*&v29 & 0x200000000) == 0)
    {
LABEL_57:
      if ((*&v29 & 0x80000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_161;
    }
  }

  else if ((*&v29 & 0x200000000) == 0)
  {
    goto LABEL_57;
  }

  *&v4 = self->_playbackRate;
  v89 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v89 forKey:@"playbackRate"];

  v29 = self->_has;
  if ((*&v29 & 0x80000) == 0)
  {
LABEL_58:
    if ((*&v29 & 0x8000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_162;
  }

LABEL_161:
  v90 = [MEMORY[0x1E696AD98] numberWithInt:self->_chapterCount];
  [v5 setObject:v90 forKey:@"chapterCount"];

  v29 = self->_has;
  if ((*&v29 & 0x8000000000) == 0)
  {
LABEL_59:
    if ((*&v29 & 0x10000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_163;
  }

LABEL_162:
  v91 = [MEMORY[0x1E696AD98] numberWithInt:self->_totalDiscCount];
  [v5 setObject:v91 forKey:@"totalDiscCount"];

  v29 = self->_has;
  if ((*&v29 & 0x10000000000) == 0)
  {
LABEL_60:
    if ((*&v29 & 0x20000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_163:
  v92 = [MEMORY[0x1E696AD98] numberWithInt:self->_totalTrackCount];
  [v5 setObject:v92 forKey:@"totalTrackCount"];

  if ((*&self->_has & 0x20000000000) != 0)
  {
LABEL_61:
    v30 = [MEMORY[0x1E696AD98] numberWithInt:self->_trackNumber];
    [v5 setObject:v30 forKey:@"trackNumber"];
  }

LABEL_62:
  contentIdentifier = self->_contentIdentifier;
  if (contentIdentifier)
  {
    [v5 setObject:contentIdentifier forKey:@"contentIdentifier"];
  }

  v32 = self->_has;
  if ((*&v32 & 0x200000000000000) != 0)
  {
    v93 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSharable];
    [v5 setObject:v93 forKey:@"isSharable"];

    v32 = self->_has;
    if ((*&v32 & 0x20000000000000) == 0)
    {
LABEL_66:
      if ((*&v32 & 0x10000000000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_167;
    }
  }

  else if ((*&v32 & 0x20000000000000) == 0)
  {
    goto LABEL_66;
  }

  v94 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLiked];
  [v5 setObject:v94 forKey:@"isLiked"];

  v32 = self->_has;
  if ((*&v32 & 0x10000000000000) == 0)
  {
LABEL_67:
    if ((*&v32 & 0x800) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_167:
  v95 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInWishList];
  [v5 setObject:v95 forKey:@"isInWishList"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_68:
    v33 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_radioStationIdentifier];
    [v5 setObject:v33 forKey:@"radioStationIdentifier"];
  }

LABEL_69:
  radioStationName = self->_radioStationName;
  if (radioStationName)
  {
    [v5 setObject:radioStationName forKey:@"radioStationName"];
  }

  radioStationString = self->_radioStationString;
  if (radioStationString)
  {
    [v5 setObject:radioStationString forKey:@"radioStationString"];
  }

  v36 = self->_has;
  if ((*&v36 & 0x40) != 0)
  {
    v96 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_iTunesStoreIdentifier];
    [v5 setObject:v96 forKey:@"iTunesStoreIdentifier"];

    v36 = self->_has;
    if ((*&v36 & 0x80) == 0)
    {
LABEL_75:
      if ((*&v36 & 0x20) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_171;
    }
  }

  else if ((*&v36 & 0x80) == 0)
  {
    goto LABEL_75;
  }

  v97 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_iTunesStoreSubscriptionIdentifier];
  [v5 setObject:v97 forKey:@"iTunesStoreSubscriptionIdentifier"];

  v36 = self->_has;
  if ((*&v36 & 0x20) == 0)
  {
LABEL_76:
    if ((*&v36 & 0x10) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_171:
  v98 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_iTunesStoreArtistIdentifier];
  [v5 setObject:v98 forKey:@"iTunesStoreArtistIdentifier"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_77:
    v37 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_iTunesStoreAlbumIdentifier];
    [v5 setObject:v37 forKey:@"iTunesStoreAlbumIdentifier"];
  }

LABEL_78:
  purchaseInfoData = self->_purchaseInfoData;
  if (purchaseInfoData)
  {
    [v5 setObject:purchaseInfoData forKey:@"purchaseInfoData"];
  }

  v39 = self->_has;
  if ((*&v39 & 0x100000) != 0)
  {
    *&v4 = self->_defaultPlaybackRate;
    v99 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v99 forKey:@"defaultPlaybackRate"];

    v39 = self->_has;
    if ((*&v39 & 0x800000) == 0)
    {
LABEL_82:
      if ((*&v39 & 0x400000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  else if ((*&v39 & 0x800000) == 0)
  {
    goto LABEL_82;
  }

  v100 = [MEMORY[0x1E696AD98] numberWithInt:self->_downloadState];
  [v5 setObject:v100 forKey:@"downloadState"];

  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_83:
    *&v4 = self->_downloadProgress;
    v40 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v40 forKey:@"downloadProgress"];
  }

LABEL_84:
  appMetricsData = self->_appMetricsData;
  if (appMetricsData)
  {
    [v5 setObject:appMetricsData forKey:@"appMetricsData"];
  }

  seriesName = self->_seriesName;
  if (seriesName)
  {
    [v5 setObject:seriesName forKey:@"seriesName"];
  }

  v43 = self->_has;
  if ((*&v43 & 0x20000000) != 0)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithInt:self->_mediaType];
    [v5 setObject:v44 forKey:@"mediaType"];

    v43 = self->_has;
  }

  if ((*&v43 & 0x10000000) != 0)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithInt:self->_mediaSubType];
    [v5 setObject:v45 forKey:@"mediaSubType"];
  }

  nowPlayingInfoData = self->_nowPlayingInfoData;
  if (nowPlayingInfoData)
  {
    [v5 setObject:nowPlayingInfoData forKey:@"nowPlayingInfoData"];
  }

  userInfoData = self->_userInfoData;
  if (userInfoData)
  {
    [v5 setObject:userInfoData forKey:@"userInfoData"];
  }

  if ((*(&self->_has + 7) & 4) != 0)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSteerable];
    [v5 setObject:v48 forKey:@"isSteerable"];
  }

  artworkURL = self->_artworkURL;
  if (artworkURL)
  {
    [v5 setObject:artworkURL forKey:@"artworkURL"];
  }

  lyricsURL = self->_lyricsURL;
  if (lyricsURL)
  {
    [v5 setObject:lyricsURL forKey:@"lyricsURL"];
  }

  deviceSpecificUserInfoData = self->_deviceSpecificUserInfoData;
  if (deviceSpecificUserInfoData)
  {
    [v5 setObject:deviceSpecificUserInfoData forKey:@"deviceSpecificUserInfoData"];
  }

  collectionInfoData = self->_collectionInfoData;
  if (collectionInfoData)
  {
    [v5 setObject:collectionInfoData forKey:@"collectionInfoData"];
  }

  v53 = self->_has;
  if ((*&v53 & 4) != 0)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithDouble:self->_elapsedTimeTimestamp];
    [v5 setObject:v54 forKey:@"elapsedTimeTimestamp"];

    v53 = self->_has;
  }

  if ((*&v53 & 0x100) != 0)
  {
    v55 = [MEMORY[0x1E696AD98] numberWithDouble:self->_inferredTimestamp];
    [v5 setObject:v55 forKey:@"inferredTimestamp"];
  }

  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    [v5 setObject:serviceIdentifier forKey:@"serviceIdentifier"];
  }

  v57 = self->_has;
  if ((*&v57 & 0x40000) != 0)
  {
    v58 = [MEMORY[0x1E696AD98] numberWithInt:self->_artworkDataWidthDeprecated];
    [v5 setObject:v58 forKey:@"artworkDataWidthDeprecated"];

    v57 = self->_has;
  }

  if ((*&v57 & 0x20000) != 0)
  {
    v59 = [MEMORY[0x1E696AD98] numberWithInt:self->_artworkDataHeightDeprecated];
    [v5 setObject:v59 forKey:@"artworkDataHeightDeprecated"];
  }

  currentPlaybackDateData = self->_currentPlaybackDateData;
  if (currentPlaybackDateData)
  {
    [v5 setObject:currentPlaybackDateData forKey:@"currentPlaybackDateData"];
  }

  artworkIdentifier = self->_artworkIdentifier;
  if (artworkIdentifier)
  {
    [v5 setObject:artworkIdentifier forKey:@"artworkIdentifier"];
  }

  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    v62 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLoading];
    [v5 setObject:v62 forKey:@"isLoading"];
  }

  artworkURLTemplatesData = self->_artworkURLTemplatesData;
  if (artworkURLTemplatesData)
  {
    [v5 setObject:artworkURLTemplatesData forKey:@"artworkURLTemplatesData"];
  }

  v64 = self->_has;
  if ((*&v64 & 0x200) != 0)
  {
    v65 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_legacyUniqueIdentifier];
    [v5 setObject:v65 forKey:@"legacyUniqueIdentifier"];

    v64 = self->_has;
  }

  if ((*&v64 & 0x4000000) != 0)
  {
    v66 = [MEMORY[0x1E696AD98] numberWithInt:self->_episodeType];
    [v5 setObject:v66 forKey:@"episodeType"];
  }

  artworkFileURL = self->_artworkFileURL;
  if (artworkFileURL)
  {
    [v5 setObject:artworkFileURL forKey:@"artworkFileURL"];
  }

  brandIdentifier = self->_brandIdentifier;
  if (brandIdentifier)
  {
    [v5 setObject:brandIdentifier forKey:@"brandIdentifier"];
  }

  localizedDurationString = self->_localizedDurationString;
  if (localizedDurationString)
  {
    [v5 setObject:localizedDurationString forKey:@"localizedDurationString"];
  }

  albumYear = self->_albumYear;
  if (albumYear)
  {
    [v5 setObject:albumYear forKey:@"albumYear"];
  }

  v71 = self->_has;
  if ((*&v71 & 0x4000000000) == 0)
  {
    if ((*&v71 & 0x10000) == 0)
    {
      goto LABEL_138;
    }

LABEL_194:
    albumTraits = self->_albumTraits;
    if (albumTraits <= 3)
    {
      if (!albumTraits)
      {
        v104 = @"None";
        goto LABEL_211;
      }

      if (albumTraits != 1)
      {
        if (albumTraits == 2)
        {
          v104 = @"Loseless";
          goto LABEL_211;
        }

        goto LABEL_207;
      }

      v104 = @"AppleDigitalMaster";
    }

    else if (albumTraits > 15)
    {
      if (albumTraits != 16)
      {
        if (albumTraits == 32)
        {
          v104 = @"Surround";
          goto LABEL_211;
        }

        goto LABEL_207;
      }

      v104 = @"Atmos";
    }

    else
    {
      if (albumTraits != 4)
      {
        if (albumTraits == 8)
        {
          v104 = @"Spatial";
          goto LABEL_211;
        }

LABEL_207:
        v104 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_albumTraits];
        goto LABEL_211;
      }

      v104 = @"HighResolutionLossless";
    }

LABEL_211:
    [v5 setObject:v104 forKey:@"albumTraits"];

    if ((*&self->_has & 0x400000000) == 0)
    {
      goto LABEL_225;
    }

LABEL_212:
    playlistTraits = self->_playlistTraits;
    if (playlistTraits <= 15)
    {
      if (!playlistTraits)
      {
        v106 = @"None";
        goto LABEL_224;
      }

      if (playlistTraits == 8)
      {
        v106 = @"Spatial";
        goto LABEL_224;
      }
    }

    else
    {
      switch(playlistTraits)
      {
        case 16:
          v106 = @"Atmos";
          goto LABEL_224;
        case 32:
          v106 = @"Surround";
          goto LABEL_224;
        case 256:
          v106 = @"Sing";
LABEL_224:
          [v5 setObject:v106 forKey:@"playlistTraits"];

          goto LABEL_225;
      }
    }

    v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_playlistTraits];
    goto LABEL_224;
  }

  songTraits = self->_songTraits;
  if (songTraits <= 3)
  {
    if (!songTraits)
    {
      v102 = @"None";
      goto LABEL_193;
    }

    if (songTraits != 1)
    {
      if (songTraits == 2)
      {
        v102 = @"Loseless";
        goto LABEL_193;
      }

      goto LABEL_189;
    }

    v102 = @"AppleDigitalMaster";
  }

  else if (songTraits > 15)
  {
    if (songTraits != 16)
    {
      if (songTraits == 32)
      {
        v102 = @"Surround";
        goto LABEL_193;
      }

      goto LABEL_189;
    }

    v102 = @"Atmos";
  }

  else
  {
    if (songTraits != 4)
    {
      if (songTraits == 8)
      {
        v102 = @"Spatial";
        goto LABEL_193;
      }

LABEL_189:
      v102 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_songTraits];
      goto LABEL_193;
    }

    v102 = @"HighResolutionLossless";
  }

LABEL_193:
  [v5 setObject:v102 forKey:@"songTraits"];

  v71 = self->_has;
  if ((*&v71 & 0x10000) != 0)
  {
    goto LABEL_194;
  }

LABEL_138:
  if ((*&v71 & 0x400000000) != 0)
  {
    goto LABEL_212;
  }

LABEL_225:
  preferredFormat = self->_preferredFormat;
  if (preferredFormat)
  {
    dictionaryRepresentation = [(_MRAudioFormatProtobuf *)preferredFormat dictionaryRepresentation];
    [v5 setObject:dictionaryRepresentation forKey:@"preferredFormat"];
  }

  activeFormat = self->_activeFormat;
  if (activeFormat)
  {
    dictionaryRepresentation2 = [(_MRAudioFormatProtobuf *)activeFormat dictionaryRepresentation];
    [v5 setObject:dictionaryRepresentation2 forKey:@"activeFormat"];
  }

  v111 = self->_has;
  if ((*&v111 & 0x8000) != 0)
  {
    activeFormatJustification = self->_activeFormatJustification;
    if (activeFormatJustification <= 100)
    {
      switch(activeFormatJustification)
      {
        case 0:
          v113 = @"Unknown";
          goto LABEL_247;
        case 1:
          v113 = @"Unavailable";
          goto LABEL_247;
        case 100:
          v113 = @"UserPreference";
          goto LABEL_247;
      }
    }

    else if (activeFormatJustification > 500)
    {
      if (activeFormatJustification == 501)
      {
        v113 = @"RouteUnknownCompatibility";
        goto LABEL_247;
      }

      if (activeFormatJustification == 1000)
      {
        v113 = @"BandwidthInsufficient";
        goto LABEL_247;
      }
    }

    else
    {
      if (activeFormatJustification == 101)
      {
        v113 = @"UserDownload";
        goto LABEL_247;
      }

      if (activeFormatJustification == 500)
      {
        v113 = @"RouteIncompatible";
LABEL_247:
        [v5 setObject:v113 forKey:@"activeFormatJustification"];

        v111 = self->_has;
        goto LABEL_248;
      }
    }

    v113 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_activeFormatJustification];
    goto LABEL_247;
  }

LABEL_248:
  if ((*&v111 & 0x8000000) == 0)
  {
    goto LABEL_262;
  }

  formatTierPreference = self->_formatTierPreference;
  if (formatTierPreference <= 3)
  {
    if (formatTierPreference == 1)
    {
      v115 = @"LowBandwidthStereo";
      goto LABEL_261;
    }

    if (formatTierPreference == 2)
    {
      v115 = @"HighQualityStereo";
      goto LABEL_261;
    }

LABEL_260:
    v115 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_formatTierPreference];
    goto LABEL_261;
  }

  if (formatTierPreference == 4)
  {
    v115 = @"Lossless";
    goto LABEL_261;
  }

  if (formatTierPreference == 8)
  {
    v115 = @"HighResolutionLossless";
    goto LABEL_261;
  }

  if (formatTierPreference != 16)
  {
    goto LABEL_260;
  }

  v115 = @"Spatial";
LABEL_261:
  [v5 setObject:v115 forKey:@"formatTierPreference"];

LABEL_262:
  audioRoute = self->_audioRoute;
  if (audioRoute)
  {
    dictionaryRepresentation3 = [(_MRAudioRouteProtobuf *)audioRoute dictionaryRepresentation];
    [v5 setObject:dictionaryRepresentation3 forKey:@"audioRoute"];
  }

  if ([(NSMutableArray *)self->_alternativeFormats count])
  {
    v118 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_alternativeFormats, "count")}];
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v119 = self->_alternativeFormats;
    v120 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v147 objects:v151 count:16];
    if (v120)
    {
      v121 = v120;
      v122 = *v148;
      do
      {
        for (i = 0; i != v121; ++i)
        {
          if (*v148 != v122)
          {
            objc_enumerationMutation(v119);
          }

          dictionaryRepresentation4 = [*(*(&v147 + 1) + 8 * i) dictionaryRepresentation];
          [v118 addObject:dictionaryRepresentation4];
        }

        v121 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v147 objects:v151 count:16];
      }

      while (v121);
    }

    [v5 setObject:v118 forKey:@"alternativeFormats"];
  }

  v125 = self->_has;
  if ((*&v125 & 0x400000000000) != 0)
  {
    v126 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAdvertisement];
    [v5 setObject:v126 forKey:@"isAdvertisement"];

    v125 = self->_has;
  }

  if ((*&v125 & 0x100000000000) != 0)
  {
    v127 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAlternativeFormats];
    [v5 setObject:v127 forKey:@"hasAlternativeFormats"];
  }

  participantName = self->_participantName;
  if (participantName)
  {
    [v5 setObject:participantName forKey:@"participantName"];
  }

  participantIdentifier = self->_participantIdentifier;
  if (participantIdentifier)
  {
    [v5 setObject:participantIdentifier forKey:@"participantIdentifier"];
  }

  classicalWork = self->_classicalWork;
  if (classicalWork)
  {
    [v5 setObject:classicalWork forKey:@"classicalWork"];
  }

  v131 = self->_has;
  if ((*&v131 & 0x2000) != 0)
  {
    v143 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_reportingAdamID];
    [v5 setObject:v143 forKey:@"reportingAdamID"];

    v131 = self->_has;
    if ((*&v131 & 0x400) == 0)
    {
LABEL_285:
      if ((*&v131 & 8) == 0)
      {
        goto LABEL_287;
      }

      goto LABEL_286;
    }
  }

  else if ((*&v131 & 0x400) == 0)
  {
    goto LABEL_285;
  }

  v144 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_lyricsAdamID];
  [v5 setObject:v144 forKey:@"lyricsAdamID"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_286:
    v132 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_iTunesStoreAlbumArtistIdentifier];
    [v5 setObject:v132 forKey:@"iTunesStoreAlbumArtistIdentifier"];
  }

LABEL_287:
  durationStringLocalizationKey = self->_durationStringLocalizationKey;
  if (durationStringLocalizationKey)
  {
    [v5 setObject:durationStringLocalizationKey forKey:@"durationStringLocalizationKey"];
  }

  if (*(&self->_has + 7))
  {
    v134 = [MEMORY[0x1E696AD98] numberWithBool:self->_isResolvableParticipant];
    [v5 setObject:v134 forKey:@"isResolvableParticipant"];
  }

  internationalStandardRecordingCode = self->_internationalStandardRecordingCode;
  if (internationalStandardRecordingCode)
  {
    [v5 setObject:internationalStandardRecordingCode forKey:@"internationalStandardRecordingCode"];
  }

  v136 = self->_has;
  if ((*&v136 & 0x8000000000000) != 0)
  {
    v145 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInTransition];
    [v5 setObject:v145 forKey:@"isInTransition"];

    v136 = self->_has;
    if ((*&v136 & 0x80000000000) == 0)
    {
LABEL_295:
      if ((*&v136 & 0x4000000000000000) == 0)
      {
        goto LABEL_297;
      }

      goto LABEL_296;
    }
  }

  else if ((*&v136 & 0x80000000000) == 0)
  {
    goto LABEL_295;
  }

  v146 = [MEMORY[0x1E696AD98] numberWithBool:self->_excludeFromSuggestions];
  [v5 setObject:v146 forKey:@"excludeFromSuggestions"];

  if ((*&self->_has & 0x4000000000000000) != 0)
  {
LABEL_296:
    v137 = [MEMORY[0x1E696AD98] numberWithBool:self->_transcriptAlignmentsAvailable];
    [v5 setObject:v137 forKey:@"transcriptAlignmentsAvailable"];
  }

LABEL_297:
  subtitleShort = self->_subtitleShort;
  if (subtitleShort)
  {
    [v5 setObject:subtitleShort forKey:@"subtitleShort"];
  }

  transitionInfoData = self->_transitionInfoData;
  if (transitionInfoData)
  {
    [v5 setObject:transitionInfoData forKey:@"transitionInfoData"];
  }

  v140 = v5;

  v141 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)writeTo:(id)to
{
  v97 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x1000000000000) != 0)
  {
    isContainer = self->_isContainer;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 0x80000000000000) == 0)
    {
LABEL_7:
      if ((*&has & 0x100000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&has & 0x80000000000000) == 0)
  {
    goto LABEL_7;
  }

  isPlayable = self->_isPlayable;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x100000000) != 0)
  {
LABEL_8:
    playbackProgress = self->_playbackProgress;
    PBDataWriterWriteFloatField();
  }

LABEL_9:
  if (self->_albumName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trackArtistName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_albumArtistName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_directorName)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x2000000000) != 0)
  {
    seasonNumber = self->_seasonNumber;
    PBDataWriterWriteInt32Field();
    v7 = self->_has;
    if ((*&v7 & 0x2000000) == 0)
    {
LABEL_19:
      if ((*&v7 & 0x1000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_191;
    }
  }

  else if ((*&v7 & 0x2000000) == 0)
  {
    goto LABEL_19;
  }

  episodeNumber = self->_episodeNumber;
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((*&v7 & 0x1000) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_192;
  }

LABEL_191:
  releaseDate = self->_releaseDate;
  PBDataWriterWriteDoubleField();
  v7 = self->_has;
  if ((*&v7 & 0x80000000) == 0)
  {
LABEL_21:
    if ((*&v7 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_192:
  playCount = self->_playCount;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_22:
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

LABEL_23:
  if (self->_localizedContentRating)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((*&v9 & 0x4000000000000) != 0)
  {
    isExplicitItem = self->_isExplicitItem;
    PBDataWriterWriteBOOLField();
    v9 = self->_has;
    if ((*&v9 & 0x800000000) == 0)
    {
LABEL_27:
      if ((*&v9 & 0x1000000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_196;
    }
  }

  else if ((*&v9 & 0x800000000) == 0)
  {
    goto LABEL_27;
  }

  playlistType = self->_playlistType;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x1000000000) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x40000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_197;
  }

LABEL_196:
  radioStationType = self->_radioStationType;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x40000000000) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x200000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_198;
  }

LABEL_197:
  artworkAvailable = self->_artworkAvailable;
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x200000000000) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x1000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_199;
  }

LABEL_198:
  infoAvailable = self->_infoAvailable;
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x1000000000000000) == 0)
  {
LABEL_31:
    if ((*&v9 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_200;
  }

LABEL_199:
  languageOptionsAvailable = self->_languageOptionsAvailable;
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x40000000) == 0)
  {
LABEL_32:
    if ((*&v9 & 0x2000000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_201;
  }

LABEL_200:
  numberOfSections = self->_numberOfSections;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x2000000000000000) == 0)
  {
LABEL_33:
    if ((*&v9 & 0x1000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_202;
  }

LABEL_201:
  lyricsAvailable = self->_lyricsAvailable;
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x1000000) == 0)
  {
LABEL_34:
    if ((*&v9 & 0x800000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_203;
  }

LABEL_202:
  editingStyleFlags = self->_editingStyleFlags;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x800000000000000) == 0)
  {
LABEL_35:
    if ((*&v9 & 0x2000000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_203:
  isStreamingContent = self->_isStreamingContent;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x2000000000000) != 0)
  {
LABEL_36:
    isCurrentlyPlaying = self->_isCurrentlyPlaying;
    PBDataWriterWriteBOOLField();
  }

LABEL_37:
  if (self->_collectionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_profileIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    startTime = self->_startTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_artworkMIMEType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetURLString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_composer)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  if ((*&v12 & 0x200000) != 0)
  {
    discNumber = self->_discNumber;
    PBDataWriterWriteInt32Field();
    v12 = self->_has;
  }

  if ((*&v12 & 2) != 0)
  {
    elapsedTime = self->_elapsedTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_genre)
  {
    PBDataWriterWriteStringField();
  }

  v15 = self->_has;
  if ((*&v15 & 0x800000000000) != 0)
  {
    isAlwaysLive = self->_isAlwaysLive;
    PBDataWriterWriteBOOLField();
    v15 = self->_has;
    if ((*&v15 & 0x200000000) == 0)
    {
LABEL_57:
      if ((*&v15 & 0x80000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_207;
    }
  }

  else if ((*&v15 & 0x200000000) == 0)
  {
    goto LABEL_57;
  }

  playbackRate = self->_playbackRate;
  PBDataWriterWriteFloatField();
  v15 = self->_has;
  if ((*&v15 & 0x80000) == 0)
  {
LABEL_58:
    if ((*&v15 & 0x8000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_208;
  }

LABEL_207:
  chapterCount = self->_chapterCount;
  PBDataWriterWriteInt32Field();
  v15 = self->_has;
  if ((*&v15 & 0x8000000000) == 0)
  {
LABEL_59:
    if ((*&v15 & 0x10000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_209;
  }

LABEL_208:
  totalDiscCount = self->_totalDiscCount;
  PBDataWriterWriteInt32Field();
  v15 = self->_has;
  if ((*&v15 & 0x10000000000) == 0)
  {
LABEL_60:
    if ((*&v15 & 0x20000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_209:
  totalTrackCount = self->_totalTrackCount;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20000000000) != 0)
  {
LABEL_61:
    trackNumber = self->_trackNumber;
    PBDataWriterWriteInt32Field();
  }

LABEL_62:
  if (self->_contentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v17 = self->_has;
  if ((*&v17 & 0x200000000000000) != 0)
  {
    isSharable = self->_isSharable;
    PBDataWriterWriteBOOLField();
    v17 = self->_has;
    if ((*&v17 & 0x20000000000000) == 0)
    {
LABEL_66:
      if ((*&v17 & 0x10000000000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_213;
    }
  }

  else if ((*&v17 & 0x20000000000000) == 0)
  {
    goto LABEL_66;
  }

  isLiked = self->_isLiked;
  PBDataWriterWriteBOOLField();
  v17 = self->_has;
  if ((*&v17 & 0x10000000000000) == 0)
  {
LABEL_67:
    if ((*&v17 & 0x800) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_213:
  isInWishList = self->_isInWishList;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_68:
    radioStationIdentifier = self->_radioStationIdentifier;
    PBDataWriterWriteInt64Field();
  }

LABEL_69:
  if (self->_radioStationName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_radioStationString)
  {
    PBDataWriterWriteStringField();
  }

  v19 = self->_has;
  if ((*&v19 & 0x40) != 0)
  {
    iTunesStoreIdentifier = self->_iTunesStoreIdentifier;
    PBDataWriterWriteInt64Field();
    v19 = self->_has;
    if ((*&v19 & 0x80) == 0)
    {
LABEL_75:
      if ((*&v19 & 0x20) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_217;
    }
  }

  else if ((*&v19 & 0x80) == 0)
  {
    goto LABEL_75;
  }

  iTunesStoreSubscriptionIdentifier = self->_iTunesStoreSubscriptionIdentifier;
  PBDataWriterWriteInt64Field();
  v19 = self->_has;
  if ((*&v19 & 0x20) == 0)
  {
LABEL_76:
    if ((*&v19 & 0x10) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_217:
  iTunesStoreArtistIdentifier = self->_iTunesStoreArtistIdentifier;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_77:
    iTunesStoreAlbumIdentifier = self->_iTunesStoreAlbumIdentifier;
    PBDataWriterWriteInt64Field();
  }

LABEL_78:
  if (self->_purchaseInfoData)
  {
    PBDataWriterWriteDataField();
  }

  v21 = self->_has;
  if ((*&v21 & 0x100000) != 0)
  {
    defaultPlaybackRate = self->_defaultPlaybackRate;
    PBDataWriterWriteFloatField();
    v21 = self->_has;
    if ((*&v21 & 0x800000) == 0)
    {
LABEL_82:
      if ((*&v21 & 0x400000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  else if ((*&v21 & 0x800000) == 0)
  {
    goto LABEL_82;
  }

  downloadState = self->_downloadState;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_83:
    downloadProgress = self->_downloadProgress;
    PBDataWriterWriteFloatField();
  }

LABEL_84:
  if (self->_appMetricsData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_seriesName)
  {
    PBDataWriterWriteStringField();
  }

  v23 = self->_has;
  if ((*&v23 & 0x20000000) != 0)
  {
    mediaType = self->_mediaType;
    PBDataWriterWriteInt32Field();
    v23 = self->_has;
  }

  if ((*&v23 & 0x10000000) != 0)
  {
    mediaSubType = self->_mediaSubType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_nowPlayingInfoData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_userInfoData)
  {
    PBDataWriterWriteDataField();
  }

  if ((*(&self->_has + 7) & 4) != 0)
  {
    isSteerable = self->_isSteerable;
    PBDataWriterWriteBOOLField();
  }

  if (self->_artworkURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lyricsURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceSpecificUserInfoData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_collectionInfoData)
  {
    PBDataWriterWriteDataField();
  }

  v27 = self->_has;
  if ((*&v27 & 4) != 0)
  {
    elapsedTimeTimestamp = self->_elapsedTimeTimestamp;
    PBDataWriterWriteDoubleField();
    v27 = self->_has;
  }

  if ((*&v27 & 0x100) != 0)
  {
    inferredTimestamp = self->_inferredTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_serviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v30 = self->_has;
  if ((*&v30 & 0x40000) != 0)
  {
    artworkDataWidthDeprecated = self->_artworkDataWidthDeprecated;
    PBDataWriterWriteInt32Field();
    v30 = self->_has;
  }

  if ((*&v30 & 0x20000) != 0)
  {
    artworkDataHeightDeprecated = self->_artworkDataHeightDeprecated;
    PBDataWriterWriteInt32Field();
  }

  if (self->_currentPlaybackDateData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_artworkIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    isLoading = self->_isLoading;
    PBDataWriterWriteBOOLField();
  }

  if (self->_artworkURLTemplatesData)
  {
    PBDataWriterWriteDataField();
  }

  v34 = self->_has;
  if ((*&v34 & 0x200) != 0)
  {
    legacyUniqueIdentifier = self->_legacyUniqueIdentifier;
    PBDataWriterWriteInt64Field();
    v34 = self->_has;
  }

  if ((*&v34 & 0x4000000) != 0)
  {
    episodeType = self->_episodeType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_artworkFileURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_brandIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedDurationString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_albumYear)
  {
    PBDataWriterWriteStringField();
  }

  v37 = self->_has;
  if ((*&v37 & 0x4000000000) != 0)
  {
    songTraits = self->_songTraits;
    PBDataWriterWriteInt32Field();
    v37 = self->_has;
    if ((*&v37 & 0x10000) == 0)
    {
LABEL_138:
      if ((*&v37 & 0x400000000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_139;
    }
  }

  else if ((*&v37 & 0x10000) == 0)
  {
    goto LABEL_138;
  }

  albumTraits = self->_albumTraits;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x400000000) != 0)
  {
LABEL_139:
    playlistTraits = self->_playlistTraits;
    PBDataWriterWriteInt32Field();
  }

LABEL_140:
  if (self->_preferredFormat)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activeFormat)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = self->_has;
  if ((*&v39 & 0x8000) != 0)
  {
    activeFormatJustification = self->_activeFormatJustification;
    PBDataWriterWriteInt32Field();
    v39 = self->_has;
  }

  if ((*&v39 & 0x8000000) != 0)
  {
    formatTierPreference = self->_formatTierPreference;
    PBDataWriterWriteInt32Field();
  }

  if (self->_audioRoute)
  {
    PBDataWriterWriteSubmessage();
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v42 = self->_alternativeFormats;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v92 objects:v96 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v93;
    do
    {
      v46 = 0;
      do
      {
        if (*v93 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v92 + 1) + 8 * v46);
        PBDataWriterWriteSubmessage();
        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v92 objects:v96 count:16];
    }

    while (v44);
  }

  v48 = self->_has;
  if ((*&v48 & 0x400000000000) != 0)
  {
    isAdvertisement = self->_isAdvertisement;
    PBDataWriterWriteBOOLField();
    v48 = self->_has;
  }

  if ((*&v48 & 0x100000000000) != 0)
  {
    hasAlternativeFormats = self->_hasAlternativeFormats;
    PBDataWriterWriteBOOLField();
  }

  if (self->_participantName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_participantIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_classicalWork)
  {
    PBDataWriterWriteStringField();
  }

  v51 = self->_has;
  if ((*&v51 & 0x2000) != 0)
  {
    reportingAdamID = self->_reportingAdamID;
    PBDataWriterWriteInt64Field();
    v51 = self->_has;
    if ((*&v51 & 0x400) == 0)
    {
LABEL_169:
      if ((*&v51 & 8) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_170;
    }
  }

  else if ((*&v51 & 0x400) == 0)
  {
    goto LABEL_169;
  }

  lyricsAdamID = self->_lyricsAdamID;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_170:
    iTunesStoreAlbumArtistIdentifier = self->_iTunesStoreAlbumArtistIdentifier;
    PBDataWriterWriteInt64Field();
  }

LABEL_171:
  if (self->_durationStringLocalizationKey)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 7))
  {
    isResolvableParticipant = self->_isResolvableParticipant;
    PBDataWriterWriteBOOLField();
  }

  if (self->_internationalStandardRecordingCode)
  {
    PBDataWriterWriteStringField();
  }

  v54 = self->_has;
  if ((*&v54 & 0x8000000000000) != 0)
  {
    isInTransition = self->_isInTransition;
    PBDataWriterWriteBOOLField();
    v54 = self->_has;
    if ((*&v54 & 0x80000000000) == 0)
    {
LABEL_179:
      if ((*&v54 & 0x4000000000000000) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_180;
    }
  }

  else if ((*&v54 & 0x80000000000) == 0)
  {
    goto LABEL_179;
  }

  excludeFromSuggestions = self->_excludeFromSuggestions;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x4000000000000000) != 0)
  {
LABEL_180:
    transcriptAlignmentsAvailable = self->_transcriptAlignmentsAvailable;
    PBDataWriterWriteBOOLField();
  }

LABEL_181:
  if (self->_subtitleShort)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_transitionInfoData)
  {
    PBDataWriterWriteDataField();
  }

  v56 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v27 = toCopy;
  if (self->_title)
  {
    [toCopy setTitle:?];
    toCopy = v27;
  }

  if (self->_subtitle)
  {
    [v27 setSubtitle:?];
    toCopy = v27;
  }

  has = self->_has;
  if ((*&has & 0x1000000000000) != 0)
  {
    *(toCopy + 630) = self->_isContainer;
    *(toCopy + 81) |= 0x1000000000000uLL;
    has = self->_has;
    if ((*&has & 0x80000000000000) == 0)
    {
LABEL_7:
      if ((*&has & 0x100000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&has & 0x80000000000000) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 637) = self->_isPlayable;
  *(toCopy + 81) |= 0x80000000000000uLL;
  if ((*&self->_has & 0x100000000) != 0)
  {
LABEL_8:
    *(toCopy + 117) = LODWORD(self->_playbackProgress);
    *(toCopy + 81) |= 0x100000000uLL;
  }

LABEL_9:
  if (self->_albumName)
  {
    [v27 setAlbumName:?];
    toCopy = v27;
  }

  if (self->_trackArtistName)
  {
    [v27 setTrackArtistName:?];
    toCopy = v27;
  }

  if (self->_albumArtistName)
  {
    [v27 setAlbumArtistName:?];
    toCopy = v27;
  }

  if (self->_directorName)
  {
    [v27 setDirectorName:?];
    toCopy = v27;
  }

  v6 = self->_has;
  if ((*&v6 & 0x2000000000) != 0)
  {
    *(toCopy + 133) = self->_seasonNumber;
    *(toCopy + 81) |= 0x2000000000uLL;
    v6 = self->_has;
    if ((*&v6 & 0x2000000) == 0)
    {
LABEL_19:
      if ((*&v6 & 0x1000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_190;
    }
  }

  else if ((*&v6 & 0x2000000) == 0)
  {
    goto LABEL_19;
  }

  *(toCopy + 93) = self->_episodeNumber;
  *(toCopy + 81) |= 0x2000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_191;
  }

LABEL_190:
  *(toCopy + 13) = *&self->_releaseDate;
  *(toCopy + 81) |= 0x1000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
LABEL_21:
    if ((*&v6 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_191:
  *(toCopy + 116) = self->_playCount;
  *(toCopy + 81) |= 0x80000000uLL;
  if (*&self->_has)
  {
LABEL_22:
    *(toCopy + 1) = *&self->_duration;
    *(toCopy + 81) |= 1uLL;
  }

LABEL_23:
  if (self->_localizedContentRating)
  {
    [v27 setLocalizedContentRating:?];
    toCopy = v27;
  }

  v7 = self->_has;
  if ((*&v7 & 0x4000000000000) != 0)
  {
    *(toCopy + 632) = self->_isExplicitItem;
    *(toCopy + 81) |= 0x4000000000000uLL;
    v7 = self->_has;
    if ((*&v7 & 0x800000000) == 0)
    {
LABEL_27:
      if ((*&v7 & 0x1000000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_195;
    }
  }

  else if ((*&v7 & 0x800000000) == 0)
  {
    goto LABEL_27;
  }

  *(toCopy + 120) = self->_playlistType;
  *(toCopy + 81) |= 0x800000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x1000000000) == 0)
  {
LABEL_28:
    if ((*&v7 & 0x40000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_196;
  }

LABEL_195:
  *(toCopy + 132) = self->_radioStationType;
  *(toCopy + 81) |= 0x1000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x40000000000) == 0)
  {
LABEL_29:
    if ((*&v7 & 0x200000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_197;
  }

LABEL_196:
  *(toCopy + 624) = self->_artworkAvailable;
  *(toCopy + 81) |= 0x40000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x200000000000) == 0)
  {
LABEL_30:
    if ((*&v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_198;
  }

LABEL_197:
  *(toCopy + 627) = self->_infoAvailable;
  *(toCopy + 81) |= 0x200000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x1000000000000000) == 0)
  {
LABEL_31:
    if ((*&v7 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_199;
  }

LABEL_198:
  *(toCopy + 642) = self->_languageOptionsAvailable;
  *(toCopy + 81) |= 0x1000000000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x40000000) == 0)
  {
LABEL_32:
    if ((*&v7 & 0x2000000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_200;
  }

LABEL_199:
  *(toCopy + 110) = self->_numberOfSections;
  *(toCopy + 81) |= 0x40000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x2000000000000000) == 0)
  {
LABEL_33:
    if ((*&v7 & 0x1000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_201;
  }

LABEL_200:
  *(toCopy + 643) = self->_lyricsAvailable;
  *(toCopy + 81) |= 0x2000000000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x1000000) == 0)
  {
LABEL_34:
    if ((*&v7 & 0x800000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_202;
  }

LABEL_201:
  *(toCopy + 92) = self->_editingStyleFlags;
  *(toCopy + 81) |= 0x1000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x800000000000000) == 0)
  {
LABEL_35:
    if ((*&v7 & 0x2000000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_202:
  *(toCopy + 641) = self->_isStreamingContent;
  *(toCopy + 81) |= 0x800000000000000uLL;
  if ((*&self->_has & 0x2000000000000) != 0)
  {
LABEL_36:
    *(toCopy + 631) = self->_isCurrentlyPlaying;
    *(toCopy + 81) |= 0x2000000000000uLL;
  }

LABEL_37:
  if (self->_collectionIdentifier)
  {
    [v27 setCollectionIdentifier:?];
    toCopy = v27;
  }

  if (self->_profileIdentifier)
  {
    [v27 setProfileIdentifier:?];
    toCopy = v27;
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(toCopy + 15) = *&self->_startTime;
    *(toCopy + 81) |= 0x4000uLL;
  }

  if (self->_artworkMIMEType)
  {
    [v27 setArtworkMIMEType:?];
    toCopy = v27;
  }

  if (self->_assetURLString)
  {
    [v27 setAssetURLString:?];
    toCopy = v27;
  }

  if (self->_composer)
  {
    [v27 setComposer:?];
    toCopy = v27;
  }

  v8 = self->_has;
  if ((*&v8 & 0x200000) != 0)
  {
    *(toCopy + 86) = self->_discNumber;
    *(toCopy + 81) |= 0x200000uLL;
    v8 = self->_has;
  }

  if ((*&v8 & 2) != 0)
  {
    *(toCopy + 2) = *&self->_elapsedTime;
    *(toCopy + 81) |= 2uLL;
  }

  if (self->_genre)
  {
    [v27 setGenre:?];
    toCopy = v27;
  }

  v9 = self->_has;
  if ((*&v9 & 0x800000000000) != 0)
  {
    *(toCopy + 629) = self->_isAlwaysLive;
    *(toCopy + 81) |= 0x800000000000uLL;
    v9 = self->_has;
    if ((*&v9 & 0x200000000) == 0)
    {
LABEL_57:
      if ((*&v9 & 0x80000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_206;
    }
  }

  else if ((*&v9 & 0x200000000) == 0)
  {
    goto LABEL_57;
  }

  *(toCopy + 118) = LODWORD(self->_playbackRate);
  *(toCopy + 81) |= 0x200000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
LABEL_58:
    if ((*&v9 & 0x8000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_207;
  }

LABEL_206:
  *(toCopy + 66) = self->_chapterCount;
  *(toCopy + 81) |= 0x80000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x8000000000) == 0)
  {
LABEL_59:
    if ((*&v9 & 0x10000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_208;
  }

LABEL_207:
  *(toCopy + 146) = self->_totalDiscCount;
  *(toCopy + 81) |= 0x8000000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x10000000000) == 0)
  {
LABEL_60:
    if ((*&v9 & 0x20000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_208:
  *(toCopy + 147) = self->_totalTrackCount;
  *(toCopy + 81) |= 0x10000000000uLL;
  if ((*&self->_has & 0x20000000000) != 0)
  {
LABEL_61:
    *(toCopy + 150) = self->_trackNumber;
    *(toCopy + 81) |= 0x20000000000uLL;
  }

LABEL_62:
  if (self->_contentIdentifier)
  {
    [v27 setContentIdentifier:?];
    toCopy = v27;
  }

  v10 = self->_has;
  if ((*&v10 & 0x200000000000000) != 0)
  {
    *(toCopy + 639) = self->_isSharable;
    *(toCopy + 81) |= 0x200000000000000uLL;
    v10 = self->_has;
    if ((*&v10 & 0x20000000000000) == 0)
    {
LABEL_66:
      if ((*&v10 & 0x10000000000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_212;
    }
  }

  else if ((*&v10 & 0x20000000000000) == 0)
  {
    goto LABEL_66;
  }

  *(toCopy + 635) = self->_isLiked;
  *(toCopy + 81) |= 0x20000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x10000000000000) == 0)
  {
LABEL_67:
    if ((*&v10 & 0x800) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_212:
  *(toCopy + 634) = self->_isInWishList;
  *(toCopy + 81) |= 0x10000000000000uLL;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_68:
    *(toCopy + 12) = self->_radioStationIdentifier;
    *(toCopy + 81) |= 0x800uLL;
  }

LABEL_69:
  if (self->_radioStationName)
  {
    [v27 setRadioStationName:?];
    toCopy = v27;
  }

  if (self->_radioStationString)
  {
    [v27 setRadioStationString:?];
    toCopy = v27;
  }

  v11 = self->_has;
  if ((*&v11 & 0x40) != 0)
  {
    *(toCopy + 7) = self->_iTunesStoreIdentifier;
    *(toCopy + 81) |= 0x40uLL;
    v11 = self->_has;
    if ((*&v11 & 0x80) == 0)
    {
LABEL_75:
      if ((*&v11 & 0x20) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_216;
    }
  }

  else if ((*&v11 & 0x80) == 0)
  {
    goto LABEL_75;
  }

  *(toCopy + 8) = self->_iTunesStoreSubscriptionIdentifier;
  *(toCopy + 81) |= 0x80uLL;
  v11 = self->_has;
  if ((*&v11 & 0x20) == 0)
  {
LABEL_76:
    if ((*&v11 & 0x10) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_216:
  *(toCopy + 6) = self->_iTunesStoreArtistIdentifier;
  *(toCopy + 81) |= 0x20uLL;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_77:
    *(toCopy + 5) = self->_iTunesStoreAlbumIdentifier;
    *(toCopy + 81) |= 0x10uLL;
  }

LABEL_78:
  if (self->_purchaseInfoData)
  {
    [v27 setPurchaseInfoData:?];
    toCopy = v27;
  }

  v12 = self->_has;
  if ((*&v12 & 0x100000) != 0)
  {
    *(toCopy + 80) = LODWORD(self->_defaultPlaybackRate);
    *(toCopy + 81) |= 0x100000uLL;
    v12 = self->_has;
    if ((*&v12 & 0x800000) == 0)
    {
LABEL_82:
      if ((*&v12 & 0x400000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  else if ((*&v12 & 0x800000) == 0)
  {
    goto LABEL_82;
  }

  *(toCopy + 88) = self->_downloadState;
  *(toCopy + 81) |= 0x800000uLL;
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_83:
    *(toCopy + 87) = LODWORD(self->_downloadProgress);
    *(toCopy + 81) |= 0x400000uLL;
  }

LABEL_84:
  if (self->_appMetricsData)
  {
    [v27 setAppMetricsData:?];
    toCopy = v27;
  }

  if (self->_seriesName)
  {
    [v27 setSeriesName:?];
    toCopy = v27;
  }

  v13 = self->_has;
  if ((*&v13 & 0x20000000) != 0)
  {
    *(toCopy + 107) = self->_mediaType;
    *(toCopy + 81) |= 0x20000000uLL;
    v13 = self->_has;
  }

  if ((*&v13 & 0x10000000) != 0)
  {
    *(toCopy + 106) = self->_mediaSubType;
    *(toCopy + 81) |= 0x10000000uLL;
  }

  if (self->_nowPlayingInfoData)
  {
    [v27 setNowPlayingInfoData:?];
    toCopy = v27;
  }

  if (self->_userInfoData)
  {
    [v27 setUserInfoData:?];
    toCopy = v27;
  }

  if ((*(&self->_has + 7) & 4) != 0)
  {
    *(toCopy + 640) = self->_isSteerable;
    *(toCopy + 81) |= 0x400000000000000uLL;
  }

  if (self->_artworkURL)
  {
    [v27 setArtworkURL:?];
    toCopy = v27;
  }

  if (self->_lyricsURL)
  {
    [v27 setLyricsURL:?];
    toCopy = v27;
  }

  if (self->_deviceSpecificUserInfoData)
  {
    [v27 setDeviceSpecificUserInfoData:?];
    toCopy = v27;
  }

  if (self->_collectionInfoData)
  {
    [v27 setCollectionInfoData:?];
    toCopy = v27;
  }

  v14 = self->_has;
  if ((*&v14 & 4) != 0)
  {
    *(toCopy + 3) = *&self->_elapsedTimeTimestamp;
    *(toCopy + 81) |= 4uLL;
    v14 = self->_has;
  }

  if ((*&v14 & 0x100) != 0)
  {
    *(toCopy + 9) = *&self->_inferredTimestamp;
    *(toCopy + 81) |= 0x100uLL;
  }

  if (self->_serviceIdentifier)
  {
    [v27 setServiceIdentifier:?];
    toCopy = v27;
  }

  v15 = self->_has;
  if ((*&v15 & 0x40000) != 0)
  {
    *(toCopy + 49) = self->_artworkDataWidthDeprecated;
    *(toCopy + 81) |= 0x40000uLL;
    v15 = self->_has;
  }

  if ((*&v15 & 0x20000) != 0)
  {
    *(toCopy + 48) = self->_artworkDataHeightDeprecated;
    *(toCopy + 81) |= 0x20000uLL;
  }

  if (self->_currentPlaybackDateData)
  {
    [v27 setCurrentPlaybackDateData:?];
    toCopy = v27;
  }

  if (self->_artworkIdentifier)
  {
    [v27 setArtworkIdentifier:?];
    toCopy = v27;
  }

  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    *(toCopy + 636) = self->_isLoading;
    *(toCopy + 81) |= 0x40000000000000uLL;
  }

  if (self->_artworkURLTemplatesData)
  {
    [v27 setArtworkURLTemplatesData:?];
    toCopy = v27;
  }

  v16 = self->_has;
  if ((*&v16 & 0x200) != 0)
  {
    *(toCopy + 10) = self->_legacyUniqueIdentifier;
    *(toCopy + 81) |= 0x200uLL;
    v16 = self->_has;
  }

  if ((*&v16 & 0x4000000) != 0)
  {
    *(toCopy + 94) = self->_episodeType;
    *(toCopy + 81) |= 0x4000000uLL;
  }

  if (self->_artworkFileURL)
  {
    [v27 setArtworkFileURL:?];
    toCopy = v27;
  }

  if (self->_brandIdentifier)
  {
    [v27 setBrandIdentifier:?];
    toCopy = v27;
  }

  if (self->_localizedDurationString)
  {
    [v27 setLocalizedDurationString:?];
    toCopy = v27;
  }

  if (self->_albumYear)
  {
    [v27 setAlbumYear:?];
    toCopy = v27;
  }

  v17 = self->_has;
  if ((*&v17 & 0x4000000000) != 0)
  {
    *(toCopy + 138) = self->_songTraits;
    *(toCopy + 81) |= 0x4000000000uLL;
    v17 = self->_has;
    if ((*&v17 & 0x10000) == 0)
    {
LABEL_138:
      if ((*&v17 & 0x400000000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_139;
    }
  }

  else if ((*&v17 & 0x10000) == 0)
  {
    goto LABEL_138;
  }

  *(toCopy + 40) = self->_albumTraits;
  *(toCopy + 81) |= 0x10000uLL;
  if ((*&self->_has & 0x400000000) != 0)
  {
LABEL_139:
    *(toCopy + 119) = self->_playlistTraits;
    *(toCopy + 81) |= 0x400000000uLL;
  }

LABEL_140:
  if (self->_preferredFormat)
  {
    [v27 setPreferredFormat:?];
    toCopy = v27;
  }

  if (self->_activeFormat)
  {
    [v27 setActiveFormat:?];
    toCopy = v27;
  }

  v18 = self->_has;
  if ((*&v18 & 0x8000) != 0)
  {
    *(toCopy + 34) = self->_activeFormatJustification;
    *(toCopy + 81) |= 0x8000uLL;
    v18 = self->_has;
  }

  if ((*&v18 & 0x8000000) != 0)
  {
    *(toCopy + 95) = self->_formatTierPreference;
    *(toCopy + 81) |= 0x8000000uLL;
  }

  if (self->_audioRoute)
  {
    [v27 setAudioRoute:?];
  }

  if ([(_MRContentItemMetadataProtobuf *)self alternativeFormatsCount])
  {
    [v27 clearAlternativeFormats];
    alternativeFormatsCount = [(_MRContentItemMetadataProtobuf *)self alternativeFormatsCount];
    if (alternativeFormatsCount)
    {
      v20 = alternativeFormatsCount;
      for (i = 0; i != v20; ++i)
      {
        v22 = [(_MRContentItemMetadataProtobuf *)self alternativeFormatsAtIndex:i];
        [v27 addAlternativeFormats:v22];
      }
    }
  }

  v23 = self->_has;
  v24 = v27;
  if ((*&v23 & 0x400000000000) != 0)
  {
    *(v27 + 628) = self->_isAdvertisement;
    *(v27 + 81) |= 0x400000000000uLL;
    v23 = self->_has;
  }

  if ((*&v23 & 0x100000000000) != 0)
  {
    *(v27 + 626) = self->_hasAlternativeFormats;
    *(v27 + 81) |= 0x100000000000uLL;
  }

  if (self->_participantName)
  {
    [v27 setParticipantName:?];
    v24 = v27;
  }

  if (self->_participantIdentifier)
  {
    [v27 setParticipantIdentifier:?];
    v24 = v27;
  }

  if (self->_classicalWork)
  {
    [v27 setClassicalWork:?];
    v24 = v27;
  }

  v25 = self->_has;
  if ((*&v25 & 0x2000) != 0)
  {
    v24[14] = self->_reportingAdamID;
    v24[81] |= 0x2000uLL;
    v25 = self->_has;
    if ((*&v25 & 0x400) == 0)
    {
LABEL_166:
      if ((*&v25 & 8) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_167;
    }
  }

  else if ((*&v25 & 0x400) == 0)
  {
    goto LABEL_166;
  }

  v24[11] = self->_lyricsAdamID;
  v24[81] |= 0x400uLL;
  if ((*&self->_has & 8) != 0)
  {
LABEL_167:
    v24[4] = self->_iTunesStoreAlbumArtistIdentifier;
    v24[81] |= 8uLL;
  }

LABEL_168:
  if (self->_durationStringLocalizationKey)
  {
    [v27 setDurationStringLocalizationKey:?];
    v24 = v27;
  }

  if (*(&self->_has + 7))
  {
    *(v24 + 638) = self->_isResolvableParticipant;
    v24[81] |= 0x100000000000000uLL;
  }

  if (self->_internationalStandardRecordingCode)
  {
    [v27 setInternationalStandardRecordingCode:?];
    v24 = v27;
  }

  v26 = self->_has;
  if ((*&v26 & 0x8000000000000) != 0)
  {
    *(v24 + 633) = self->_isInTransition;
    v24[81] |= 0x8000000000000uLL;
    v26 = self->_has;
    if ((*&v26 & 0x80000000000) == 0)
    {
LABEL_176:
      if ((*&v26 & 0x4000000000000000) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_177;
    }
  }

  else if ((*&v26 & 0x80000000000) == 0)
  {
    goto LABEL_176;
  }

  *(v24 + 625) = self->_excludeFromSuggestions;
  v24[81] |= 0x80000000000uLL;
  if ((*&self->_has & 0x4000000000000000) != 0)
  {
LABEL_177:
    *(v24 + 644) = self->_transcriptAlignmentsAvailable;
    v24[81] |= 0x4000000000000000uLL;
  }

LABEL_178:
  if (self->_subtitleShort)
  {
    [v27 setSubtitleShort:?];
    v24 = v27;
  }

  if (self->_transitionInfoData)
  {
    [v27 setTransitionInfoData:?];
    v24 = v27;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v123 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 576);
  *(v5 + 576) = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:zone];
  v9 = *(v5 + 560);
  *(v5 + 560) = v8;

  has = self->_has;
  if ((*&has & 0x1000000000000) != 0)
  {
    *(v5 + 630) = self->_isContainer;
    *(v5 + 648) |= 0x1000000000000uLL;
    has = self->_has;
    if ((*&has & 0x80000000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x100000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 0x80000000000000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 637) = self->_isPlayable;
  *(v5 + 648) |= 0x80000000000000uLL;
  if ((*&self->_has & 0x100000000) != 0)
  {
LABEL_4:
    *(v5 + 468) = self->_playbackProgress;
    *(v5 + 648) |= 0x100000000uLL;
  }

LABEL_5:
  v11 = [(NSString *)self->_albumName copyWithZone:zone];
  v12 = *(v5 + 152);
  *(v5 + 152) = v11;

  v13 = [(NSString *)self->_trackArtistName copyWithZone:zone];
  v14 = *(v5 + 592);
  *(v5 + 592) = v13;

  v15 = [(NSString *)self->_albumArtistName copyWithZone:zone];
  v16 = *(v5 + 144);
  *(v5 + 144) = v15;

  v17 = [(NSString *)self->_directorName copyWithZone:zone];
  v18 = *(v5 + 336);
  *(v5 + 336) = v17;

  v19 = self->_has;
  if ((*&v19 & 0x2000000000) != 0)
  {
    *(v5 + 532) = self->_seasonNumber;
    *(v5 + 648) |= 0x2000000000uLL;
    v19 = self->_has;
    if ((*&v19 & 0x2000000) == 0)
    {
LABEL_7:
      if ((*&v19 & 0x1000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_105;
    }
  }

  else if ((*&v19 & 0x2000000) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 372) = self->_episodeNumber;
  *(v5 + 648) |= 0x2000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x1000) == 0)
  {
LABEL_8:
    if ((*&v19 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v5 + 104) = self->_releaseDate;
  *(v5 + 648) |= 0x1000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x80000000) == 0)
  {
LABEL_9:
    if ((*&v19 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_106:
  *(v5 + 464) = self->_playCount;
  *(v5 + 648) |= 0x80000000uLL;
  if (*&self->_has)
  {
LABEL_10:
    *(v5 + 8) = self->_duration;
    *(v5 + 648) |= 1uLL;
  }

LABEL_11:
  v20 = [(NSString *)self->_localizedContentRating copyWithZone:zone];
  v21 = *(v5 + 400);
  *(v5 + 400) = v20;

  v22 = self->_has;
  if ((*&v22 & 0x4000000000000) != 0)
  {
    *(v5 + 632) = self->_isExplicitItem;
    *(v5 + 648) |= 0x4000000000000uLL;
    v22 = self->_has;
    if ((*&v22 & 0x800000000) == 0)
    {
LABEL_13:
      if ((*&v22 & 0x1000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_110;
    }
  }

  else if ((*&v22 & 0x800000000) == 0)
  {
    goto LABEL_13;
  }

  *(v5 + 480) = self->_playlistType;
  *(v5 + 648) |= 0x800000000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x1000000000) == 0)
  {
LABEL_14:
    if ((*&v22 & 0x40000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(v5 + 528) = self->_radioStationType;
  *(v5 + 648) |= 0x1000000000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x40000000000) == 0)
  {
LABEL_15:
    if ((*&v22 & 0x200000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(v5 + 624) = self->_artworkAvailable;
  *(v5 + 648) |= 0x40000000000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x200000000000) == 0)
  {
LABEL_16:
    if ((*&v22 & 0x1000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(v5 + 627) = self->_infoAvailable;
  *(v5 + 648) |= 0x200000000000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x1000000000000000) == 0)
  {
LABEL_17:
    if ((*&v22 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(v5 + 642) = self->_languageOptionsAvailable;
  *(v5 + 648) |= 0x1000000000000000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x40000000) == 0)
  {
LABEL_18:
    if ((*&v22 & 0x2000000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(v5 + 440) = self->_numberOfSections;
  *(v5 + 648) |= 0x40000000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x2000000000000000) == 0)
  {
LABEL_19:
    if ((*&v22 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(v5 + 643) = self->_lyricsAvailable;
  *(v5 + 648) |= 0x2000000000000000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x1000000) == 0)
  {
LABEL_20:
    if ((*&v22 & 0x800000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_117;
  }

LABEL_116:
  *(v5 + 368) = self->_editingStyleFlags;
  *(v5 + 648) |= 0x1000000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x800000000000000) == 0)
  {
LABEL_21:
    if ((*&v22 & 0x2000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_117:
  *(v5 + 641) = self->_isStreamingContent;
  *(v5 + 648) |= 0x800000000000000uLL;
  if ((*&self->_has & 0x2000000000000) != 0)
  {
LABEL_22:
    *(v5 + 631) = self->_isCurrentlyPlaying;
    *(v5 + 648) |= 0x2000000000000uLL;
  }

LABEL_23:
  v23 = [(NSString *)self->_collectionIdentifier copyWithZone:zone];
  v24 = *(v5 + 280);
  *(v5 + 280) = v23;

  v25 = [(NSString *)self->_profileIdentifier copyWithZone:zone];
  v26 = *(v5 + 496);
  *(v5 + 496) = v25;

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v5 + 120) = self->_startTime;
    *(v5 + 648) |= 0x4000uLL;
  }

  v27 = [(NSString *)self->_artworkMIMEType copyWithZone:zone];
  v28 = *(v5 + 216);
  *(v5 + 216) = v27;

  v29 = [(NSString *)self->_assetURLString copyWithZone:zone];
  v30 = *(v5 + 240);
  *(v5 + 240) = v29;

  v31 = [(NSString *)self->_composer copyWithZone:zone];
  v32 = *(v5 + 296);
  *(v5 + 296) = v31;

  v33 = self->_has;
  if ((*&v33 & 0x200000) != 0)
  {
    *(v5 + 344) = self->_discNumber;
    *(v5 + 648) |= 0x200000uLL;
    v33 = self->_has;
  }

  if ((*&v33 & 2) != 0)
  {
    *(v5 + 16) = self->_elapsedTime;
    *(v5 + 648) |= 2uLL;
  }

  v34 = [(NSString *)self->_genre copyWithZone:zone];
  v35 = *(v5 + 384);
  *(v5 + 384) = v34;

  v36 = self->_has;
  if ((*&v36 & 0x800000000000) != 0)
  {
    *(v5 + 629) = self->_isAlwaysLive;
    *(v5 + 648) |= 0x800000000000uLL;
    v36 = self->_has;
    if ((*&v36 & 0x200000000) == 0)
    {
LABEL_31:
      if ((*&v36 & 0x80000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_121;
    }
  }

  else if ((*&v36 & 0x200000000) == 0)
  {
    goto LABEL_31;
  }

  *(v5 + 472) = self->_playbackRate;
  *(v5 + 648) |= 0x200000000uLL;
  v36 = self->_has;
  if ((*&v36 & 0x80000) == 0)
  {
LABEL_32:
    if ((*&v36 & 0x8000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(v5 + 264) = self->_chapterCount;
  *(v5 + 648) |= 0x80000uLL;
  v36 = self->_has;
  if ((*&v36 & 0x8000000000) == 0)
  {
LABEL_33:
    if ((*&v36 & 0x10000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(v5 + 584) = self->_totalDiscCount;
  *(v5 + 648) |= 0x8000000000uLL;
  v36 = self->_has;
  if ((*&v36 & 0x10000000000) == 0)
  {
LABEL_34:
    if ((*&v36 & 0x20000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_123:
  *(v5 + 588) = self->_totalTrackCount;
  *(v5 + 648) |= 0x10000000000uLL;
  if ((*&self->_has & 0x20000000000) != 0)
  {
LABEL_35:
    *(v5 + 600) = self->_trackNumber;
    *(v5 + 648) |= 0x20000000000uLL;
  }

LABEL_36:
  v37 = [(NSString *)self->_contentIdentifier copyWithZone:zone];
  v38 = *(v5 + 304);
  *(v5 + 304) = v37;

  v39 = self->_has;
  if ((*&v39 & 0x200000000000000) != 0)
  {
    *(v5 + 639) = self->_isSharable;
    *(v5 + 648) |= 0x200000000000000uLL;
    v39 = self->_has;
    if ((*&v39 & 0x20000000000000) == 0)
    {
LABEL_38:
      if ((*&v39 & 0x10000000000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_127;
    }
  }

  else if ((*&v39 & 0x20000000000000) == 0)
  {
    goto LABEL_38;
  }

  *(v5 + 635) = self->_isLiked;
  *(v5 + 648) |= 0x20000000000000uLL;
  v39 = self->_has;
  if ((*&v39 & 0x10000000000000) == 0)
  {
LABEL_39:
    if ((*&v39 & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_127:
  *(v5 + 634) = self->_isInWishList;
  *(v5 + 648) |= 0x10000000000000uLL;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_40:
    *(v5 + 96) = self->_radioStationIdentifier;
    *(v5 + 648) |= 0x800uLL;
  }

LABEL_41:
  v40 = [(NSString *)self->_radioStationName copyWithZone:zone];
  v41 = *(v5 + 512);
  *(v5 + 512) = v40;

  v42 = [(NSString *)self->_radioStationString copyWithZone:zone];
  v43 = *(v5 + 520);
  *(v5 + 520) = v42;

  v44 = self->_has;
  if ((*&v44 & 0x40) != 0)
  {
    *(v5 + 56) = self->_iTunesStoreIdentifier;
    *(v5 + 648) |= 0x40uLL;
    v44 = self->_has;
    if ((*&v44 & 0x80) == 0)
    {
LABEL_43:
      if ((*&v44 & 0x20) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_131;
    }
  }

  else if ((*&v44 & 0x80) == 0)
  {
    goto LABEL_43;
  }

  *(v5 + 64) = self->_iTunesStoreSubscriptionIdentifier;
  *(v5 + 648) |= 0x80uLL;
  v44 = self->_has;
  if ((*&v44 & 0x20) == 0)
  {
LABEL_44:
    if ((*&v44 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_131:
  *(v5 + 48) = self->_iTunesStoreArtistIdentifier;
  *(v5 + 648) |= 0x20uLL;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_45:
    *(v5 + 40) = self->_iTunesStoreAlbumIdentifier;
    *(v5 + 648) |= 0x10uLL;
  }

LABEL_46:
  v45 = [(NSData *)self->_purchaseInfoData copyWithZone:zone];
  v46 = *(v5 + 504);
  *(v5 + 504) = v45;

  v47 = self->_has;
  if ((*&v47 & 0x100000) != 0)
  {
    *(v5 + 320) = self->_defaultPlaybackRate;
    *(v5 + 648) |= 0x100000uLL;
    v47 = self->_has;
    if ((*&v47 & 0x800000) == 0)
    {
LABEL_48:
      if ((*&v47 & 0x400000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

  else if ((*&v47 & 0x800000) == 0)
  {
    goto LABEL_48;
  }

  *(v5 + 352) = self->_downloadState;
  *(v5 + 648) |= 0x800000uLL;
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_49:
    *(v5 + 348) = self->_downloadProgress;
    *(v5 + 648) |= 0x400000uLL;
  }

LABEL_50:
  v48 = [(NSData *)self->_appMetricsData copyWithZone:zone];
  v49 = *(v5 + 184);
  *(v5 + 184) = v48;

  v50 = [(NSString *)self->_seriesName copyWithZone:zone];
  v51 = *(v5 + 536);
  *(v5 + 536) = v50;

  v52 = self->_has;
  if ((*&v52 & 0x20000000) != 0)
  {
    *(v5 + 428) = self->_mediaType;
    *(v5 + 648) |= 0x20000000uLL;
    v52 = self->_has;
  }

  if ((*&v52 & 0x10000000) != 0)
  {
    *(v5 + 424) = self->_mediaSubType;
    *(v5 + 648) |= 0x10000000uLL;
  }

  v53 = [(NSData *)self->_nowPlayingInfoData copyWithZone:zone];
  v54 = *(v5 + 432);
  *(v5 + 432) = v53;

  v55 = [(NSData *)self->_userInfoData copyWithZone:zone];
  v56 = *(v5 + 616);
  *(v5 + 616) = v55;

  if ((*(&self->_has + 7) & 4) != 0)
  {
    *(v5 + 640) = self->_isSteerable;
    *(v5 + 648) |= 0x400000000000000uLL;
  }

  v57 = [(NSString *)self->_artworkURL copyWithZone:zone];
  v58 = *(v5 + 224);
  *(v5 + 224) = v57;

  v59 = [(NSString *)self->_lyricsURL copyWithZone:zone];
  v60 = *(v5 + 416);
  *(v5 + 416) = v59;

  v61 = [(NSData *)self->_deviceSpecificUserInfoData copyWithZone:zone];
  v62 = *(v5 + 328);
  *(v5 + 328) = v61;

  v63 = [(NSData *)self->_collectionInfoData copyWithZone:zone];
  v64 = *(v5 + 288);
  *(v5 + 288) = v63;

  v65 = self->_has;
  if ((*&v65 & 4) != 0)
  {
    *(v5 + 24) = self->_elapsedTimeTimestamp;
    *(v5 + 648) |= 4uLL;
    v65 = self->_has;
  }

  if ((*&v65 & 0x100) != 0)
  {
    *(v5 + 72) = self->_inferredTimestamp;
    *(v5 + 648) |= 0x100uLL;
  }

  v66 = [(NSString *)self->_serviceIdentifier copyWithZone:zone];
  v67 = *(v5 + 544);
  *(v5 + 544) = v66;

  v68 = self->_has;
  if ((*&v68 & 0x40000) != 0)
  {
    *(v5 + 196) = self->_artworkDataWidthDeprecated;
    *(v5 + 648) |= 0x40000uLL;
    v68 = self->_has;
  }

  if ((*&v68 & 0x20000) != 0)
  {
    *(v5 + 192) = self->_artworkDataHeightDeprecated;
    *(v5 + 648) |= 0x20000uLL;
  }

  v69 = [(NSData *)self->_currentPlaybackDateData copyWithZone:zone];
  v70 = *(v5 + 312);
  *(v5 + 312) = v69;

  v71 = [(NSString *)self->_artworkIdentifier copyWithZone:zone];
  v72 = *(v5 + 208);
  *(v5 + 208) = v71;

  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    *(v5 + 636) = self->_isLoading;
    *(v5 + 648) |= 0x40000000000000uLL;
  }

  v73 = [(NSData *)self->_artworkURLTemplatesData copyWithZone:zone];
  v74 = *(v5 + 232);
  *(v5 + 232) = v73;

  v75 = self->_has;
  if ((*&v75 & 0x200) != 0)
  {
    *(v5 + 80) = self->_legacyUniqueIdentifier;
    *(v5 + 648) |= 0x200uLL;
    v75 = self->_has;
  }

  if ((*&v75 & 0x4000000) != 0)
  {
    *(v5 + 376) = self->_episodeType;
    *(v5 + 648) |= 0x4000000uLL;
  }

  v76 = [(NSString *)self->_artworkFileURL copyWithZone:zone];
  v77 = *(v5 + 200);
  *(v5 + 200) = v76;

  v78 = [(NSString *)self->_brandIdentifier copyWithZone:zone];
  v79 = *(v5 + 256);
  *(v5 + 256) = v78;

  v80 = [(NSString *)self->_localizedDurationString copyWithZone:zone];
  v81 = *(v5 + 408);
  *(v5 + 408) = v80;

  v82 = [(NSString *)self->_albumYear copyWithZone:zone];
  v83 = *(v5 + 168);
  *(v5 + 168) = v82;

  v84 = self->_has;
  if ((*&v84 & 0x4000000000) != 0)
  {
    *(v5 + 552) = self->_songTraits;
    *(v5 + 648) |= 0x4000000000uLL;
    v84 = self->_has;
    if ((*&v84 & 0x10000) == 0)
    {
LABEL_72:
      if ((*&v84 & 0x400000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v84 & 0x10000) == 0)
  {
    goto LABEL_72;
  }

  *(v5 + 160) = self->_albumTraits;
  *(v5 + 648) |= 0x10000uLL;
  if ((*&self->_has & 0x400000000) != 0)
  {
LABEL_73:
    *(v5 + 476) = self->_playlistTraits;
    *(v5 + 648) |= 0x400000000uLL;
  }

LABEL_74:
  v85 = [(_MRAudioFormatProtobuf *)self->_preferredFormat copyWithZone:zone];
  v86 = *(v5 + 488);
  *(v5 + 488) = v85;

  v87 = [(_MRAudioFormatProtobuf *)self->_activeFormat copyWithZone:zone];
  v88 = *(v5 + 128);
  *(v5 + 128) = v87;

  v89 = self->_has;
  if ((*&v89 & 0x8000) != 0)
  {
    *(v5 + 136) = self->_activeFormatJustification;
    *(v5 + 648) |= 0x8000uLL;
    v89 = self->_has;
  }

  if ((*&v89 & 0x8000000) != 0)
  {
    *(v5 + 380) = self->_formatTierPreference;
    *(v5 + 648) |= 0x8000000uLL;
  }

  v90 = [(_MRAudioRouteProtobuf *)self->_audioRoute copyWithZone:zone];
  v91 = *(v5 + 248);
  *(v5 + 248) = v90;

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v92 = self->_alternativeFormats;
  v93 = [(NSMutableArray *)v92 countByEnumeratingWithState:&v118 objects:v122 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = *v119;
    do
    {
      v96 = 0;
      do
      {
        if (*v119 != v95)
        {
          objc_enumerationMutation(v92);
        }

        v97 = [*(*(&v118 + 1) + 8 * v96) copyWithZone:{zone, v118}];
        [v5 addAlternativeFormats:v97];

        ++v96;
      }

      while (v94 != v96);
      v94 = [(NSMutableArray *)v92 countByEnumeratingWithState:&v118 objects:v122 count:16];
    }

    while (v94);
  }

  v98 = self->_has;
  if ((*&v98 & 0x400000000000) != 0)
  {
    *(v5 + 628) = self->_isAdvertisement;
    *(v5 + 648) |= 0x400000000000uLL;
    v98 = self->_has;
  }

  if ((*&v98 & 0x100000000000) != 0)
  {
    *(v5 + 626) = self->_hasAlternativeFormats;
    *(v5 + 648) |= 0x100000000000uLL;
  }

  v118 = [(NSString *)self->_participantName copyWithZone:zone, v118];
  v100 = *(v5 + 456);
  *(v5 + 456) = v118;

  v101 = [(NSString *)self->_participantIdentifier copyWithZone:zone];
  v102 = *(v5 + 448);
  *(v5 + 448) = v101;

  v103 = [(NSString *)self->_classicalWork copyWithZone:zone];
  v104 = *(v5 + 272);
  *(v5 + 272) = v103;

  v105 = self->_has;
  if ((*&v105 & 0x2000) != 0)
  {
    *(v5 + 112) = self->_reportingAdamID;
    *(v5 + 648) |= 0x2000uLL;
    v105 = self->_has;
    if ((*&v105 & 0x400) == 0)
    {
LABEL_91:
      if ((*&v105 & 8) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }
  }

  else if ((*&v105 & 0x400) == 0)
  {
    goto LABEL_91;
  }

  *(v5 + 88) = self->_lyricsAdamID;
  *(v5 + 648) |= 0x400uLL;
  if ((*&self->_has & 8) != 0)
  {
LABEL_92:
    *(v5 + 32) = self->_iTunesStoreAlbumArtistIdentifier;
    *(v5 + 648) |= 8uLL;
  }

LABEL_93:
  v106 = [(NSString *)self->_durationStringLocalizationKey copyWithZone:zone];
  v107 = *(v5 + 360);
  *(v5 + 360) = v106;

  if (*(&self->_has + 7))
  {
    *(v5 + 638) = self->_isResolvableParticipant;
    *(v5 + 648) |= 0x100000000000000uLL;
  }

  v108 = [(NSString *)self->_internationalStandardRecordingCode copyWithZone:zone];
  v109 = *(v5 + 392);
  *(v5 + 392) = v108;

  v110 = self->_has;
  if ((*&v110 & 0x8000000000000) == 0)
  {
    if ((*&v110 & 0x80000000000) == 0)
    {
      goto LABEL_97;
    }

LABEL_143:
    *(v5 + 625) = self->_excludeFromSuggestions;
    *(v5 + 648) |= 0x80000000000uLL;
    if ((*&self->_has & 0x4000000000000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  *(v5 + 633) = self->_isInTransition;
  *(v5 + 648) |= 0x8000000000000uLL;
  v110 = self->_has;
  if ((*&v110 & 0x80000000000) != 0)
  {
    goto LABEL_143;
  }

LABEL_97:
  if ((*&v110 & 0x4000000000000000) != 0)
  {
LABEL_98:
    *(v5 + 644) = self->_transcriptAlignmentsAvailable;
    *(v5 + 648) |= 0x4000000000000000uLL;
  }

LABEL_99:
  v111 = [(NSString *)self->_subtitleShort copyWithZone:zone];
  v112 = *(v5 + 568);
  *(v5 + 568) = v111;

  v113 = [(NSData *)self->_transitionInfoData copyWithZone:zone];
  v114 = *(v5 + 608);
  *(v5 + 608) = v113;

  v115 = v5;
  v116 = *MEMORY[0x1E69E9840];
  return v115;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  title = self->_title;
  if (title | *(equalCopy + 72))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_37;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(equalCopy + 70))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_37;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 81);
  if ((*&has & 0x1000000000000) != 0)
  {
    if ((v8 & 0x1000000000000) == 0)
    {
      goto LABEL_37;
    }

    v9 = *(equalCopy + 630);
    if (self->_isContainer)
    {
      if ((*(equalCopy + 630) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 630))
    {
      goto LABEL_37;
    }
  }

  else if ((v8 & 0x1000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&has & 0x80000000000000) != 0)
  {
    if ((v8 & 0x80000000000000) == 0)
    {
      goto LABEL_37;
    }

    v10 = *(equalCopy + 637);
    if (self->_isPlayable)
    {
      if ((*(equalCopy + 637) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 637))
    {
      goto LABEL_37;
    }
  }

  else if ((v8 & 0x80000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) == 0 || self->_playbackProgress != *(equalCopy + 117))
    {
      goto LABEL_37;
    }
  }

  else if ((v8 & 0x100000000) != 0)
  {
    goto LABEL_37;
  }

  albumName = self->_albumName;
  if (albumName | *(equalCopy + 19) && ![(NSString *)albumName isEqual:?])
  {
    goto LABEL_37;
  }

  trackArtistName = self->_trackArtistName;
  if (trackArtistName | *(equalCopy + 74))
  {
    if (![(NSString *)trackArtistName isEqual:?])
    {
      goto LABEL_37;
    }
  }

  albumArtistName = self->_albumArtistName;
  if (albumArtistName | *(equalCopy + 18))
  {
    if (![(NSString *)albumArtistName isEqual:?])
    {
      goto LABEL_37;
    }
  }

  directorName = self->_directorName;
  if (directorName | *(equalCopy + 42))
  {
    if (![(NSString *)directorName isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v15 = self->_has;
  v16 = *(equalCopy + 81);
  if ((*&v15 & 0x2000000000) != 0)
  {
    if ((v16 & 0x2000000000) == 0 || self->_seasonNumber != *(equalCopy + 133))
    {
      goto LABEL_37;
    }
  }

  else if ((v16 & 0x2000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x2000000) != 0)
  {
    if ((v16 & 0x2000000) == 0 || self->_episodeNumber != *(equalCopy + 93))
    {
      goto LABEL_37;
    }
  }

  else if ((v16 & 0x2000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x1000) != 0)
  {
    if ((v16 & 0x1000) == 0 || self->_releaseDate != *(equalCopy + 13))
    {
      goto LABEL_37;
    }
  }

  else if ((v16 & 0x1000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x80000000) != 0)
  {
    if ((v16 & 0x80000000) == 0 || self->_playCount != *(equalCopy + 116))
    {
      goto LABEL_37;
    }
  }

  else if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  if (*&v15)
  {
    if ((v16 & 1) == 0 || self->_duration != *(equalCopy + 1))
    {
      goto LABEL_37;
    }
  }

  else if (v16)
  {
    goto LABEL_37;
  }

  localizedContentRating = self->_localizedContentRating;
  if (localizedContentRating | *(equalCopy + 50))
  {
    if (![(NSString *)localizedContentRating isEqual:?])
    {
      goto LABEL_37;
    }

    v15 = self->_has;
  }

  v20 = *(equalCopy + 81);
  if ((*&v15 & 0x4000000000000) != 0)
  {
    if ((v20 & 0x4000000000000) == 0)
    {
      goto LABEL_37;
    }

    v21 = *(equalCopy + 632);
    if (self->_isExplicitItem)
    {
      if ((*(equalCopy + 632) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 632))
    {
      goto LABEL_37;
    }
  }

  else if ((v20 & 0x4000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x800000000) != 0)
  {
    if ((v20 & 0x800000000) == 0 || self->_playlistType != *(equalCopy + 120))
    {
      goto LABEL_37;
    }
  }

  else if ((v20 & 0x800000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x1000000000) != 0)
  {
    if ((v20 & 0x1000000000) == 0 || self->_radioStationType != *(equalCopy + 132))
    {
      goto LABEL_37;
    }
  }

  else if ((v20 & 0x1000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x40000000000) != 0)
  {
    if ((v20 & 0x40000000000) == 0)
    {
      goto LABEL_37;
    }

    v22 = *(equalCopy + 624);
    if (self->_artworkAvailable)
    {
      if ((*(equalCopy + 624) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 624))
    {
      goto LABEL_37;
    }
  }

  else if ((v20 & 0x40000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x200000000000) != 0)
  {
    if ((v20 & 0x200000000000) == 0)
    {
      goto LABEL_37;
    }

    v23 = *(equalCopy + 627);
    if (self->_infoAvailable)
    {
      if ((*(equalCopy + 627) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 627))
    {
      goto LABEL_37;
    }
  }

  else if ((v20 & 0x200000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x1000000000000000) != 0)
  {
    if ((v20 & 0x1000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v24 = *(equalCopy + 642);
    if (self->_languageOptionsAvailable)
    {
      if ((*(equalCopy + 642) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 642))
    {
      goto LABEL_37;
    }
  }

  else if ((v20 & 0x1000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x40000000) != 0)
  {
    if ((v20 & 0x40000000) == 0 || self->_numberOfSections != *(equalCopy + 110))
    {
      goto LABEL_37;
    }
  }

  else if ((v20 & 0x40000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x2000000000000000) != 0)
  {
    if ((v20 & 0x2000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v25 = *(equalCopy + 643);
    if (self->_lyricsAvailable)
    {
      if ((*(equalCopy + 643) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 643))
    {
      goto LABEL_37;
    }
  }

  else if ((v20 & 0x2000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x1000000) != 0)
  {
    if ((v20 & 0x1000000) == 0 || self->_editingStyleFlags != *(equalCopy + 92))
    {
      goto LABEL_37;
    }
  }

  else if ((v20 & 0x1000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x800000000000000) != 0)
  {
    if ((v20 & 0x800000000000000) == 0)
    {
      goto LABEL_37;
    }

    v29 = *(equalCopy + 641);
    if (self->_isStreamingContent)
    {
      if ((*(equalCopy + 641) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 641))
    {
      goto LABEL_37;
    }
  }

  else if ((v20 & 0x800000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v15 & 0x2000000000000) != 0)
  {
    if ((v20 & 0x2000000000000) == 0)
    {
      goto LABEL_37;
    }

    v30 = *(equalCopy + 631);
    if (self->_isCurrentlyPlaying)
    {
      if ((*(equalCopy + 631) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 631))
    {
      goto LABEL_37;
    }
  }

  else if ((v20 & 0x2000000000000) != 0)
  {
    goto LABEL_37;
  }

  collectionIdentifier = self->_collectionIdentifier;
  if (collectionIdentifier | *(equalCopy + 35) && ![(NSString *)collectionIdentifier isEqual:?])
  {
    goto LABEL_37;
  }

  profileIdentifier = self->_profileIdentifier;
  if (profileIdentifier | *(equalCopy + 62))
  {
    if (![(NSString *)profileIdentifier isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v28 = *(equalCopy + 81);
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    if ((v28 & 0x4000) == 0 || self->_startTime != *(equalCopy + 15))
    {
      goto LABEL_37;
    }
  }

  else if ((v28 & 0x4000) != 0)
  {
    goto LABEL_37;
  }

  artworkMIMEType = self->_artworkMIMEType;
  if (artworkMIMEType | *(equalCopy + 27) && ![(NSString *)artworkMIMEType isEqual:?])
  {
    goto LABEL_37;
  }

  assetURLString = self->_assetURLString;
  if (assetURLString | *(equalCopy + 30))
  {
    if (![(NSString *)assetURLString isEqual:?])
    {
      goto LABEL_37;
    }
  }

  composer = self->_composer;
  if (composer | *(equalCopy + 37))
  {
    if (![(NSString *)composer isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v34 = self->_has;
  v35 = *(equalCopy + 81);
  if ((*&v34 & 0x200000) != 0)
  {
    if ((v35 & 0x200000) == 0 || self->_discNumber != *(equalCopy + 86))
    {
      goto LABEL_37;
    }
  }

  else if ((v35 & 0x200000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v34 & 2) != 0)
  {
    if ((v35 & 2) == 0 || self->_elapsedTime != *(equalCopy + 2))
    {
      goto LABEL_37;
    }
  }

  else if ((v35 & 2) != 0)
  {
    goto LABEL_37;
  }

  genre = self->_genre;
  if (genre | *(equalCopy + 48))
  {
    if (![(NSString *)genre isEqual:?])
    {
      goto LABEL_37;
    }

    v34 = self->_has;
  }

  v37 = *(equalCopy + 81);
  if ((*&v34 & 0x800000000000) != 0)
  {
    if ((v37 & 0x800000000000) == 0)
    {
      goto LABEL_37;
    }

    v38 = *(equalCopy + 629);
    if (self->_isAlwaysLive)
    {
      if ((*(equalCopy + 629) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 629))
    {
      goto LABEL_37;
    }
  }

  else if ((v37 & 0x800000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v34 & 0x200000000) != 0)
  {
    if ((v37 & 0x200000000) == 0 || self->_playbackRate != *(equalCopy + 118))
    {
      goto LABEL_37;
    }
  }

  else if ((v37 & 0x200000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v34 & 0x80000) != 0)
  {
    if ((v37 & 0x80000) == 0 || self->_chapterCount != *(equalCopy + 66))
    {
      goto LABEL_37;
    }
  }

  else if ((v37 & 0x80000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v34 & 0x8000000000) != 0)
  {
    if ((v37 & 0x8000000000) == 0 || self->_totalDiscCount != *(equalCopy + 146))
    {
      goto LABEL_37;
    }
  }

  else if ((v37 & 0x8000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v34 & 0x10000000000) != 0)
  {
    if ((v37 & 0x10000000000) == 0 || self->_totalTrackCount != *(equalCopy + 147))
    {
      goto LABEL_37;
    }
  }

  else if ((v37 & 0x10000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v34 & 0x20000000000) != 0)
  {
    if ((v37 & 0x20000000000) == 0 || self->_trackNumber != *(equalCopy + 150))
    {
      goto LABEL_37;
    }
  }

  else if ((v37 & 0x20000000000) != 0)
  {
    goto LABEL_37;
  }

  contentIdentifier = self->_contentIdentifier;
  if (contentIdentifier | *(equalCopy + 38))
  {
    if (![(NSString *)contentIdentifier isEqual:?])
    {
      goto LABEL_37;
    }

    v34 = self->_has;
  }

  v40 = *(equalCopy + 81);
  if ((*&v34 & 0x200000000000000) != 0)
  {
    if ((v40 & 0x200000000000000) == 0)
    {
      goto LABEL_37;
    }

    v41 = *(equalCopy + 639);
    if (self->_isSharable)
    {
      if ((*(equalCopy + 639) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 639))
    {
      goto LABEL_37;
    }
  }

  else if ((v40 & 0x200000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v34 & 0x20000000000000) != 0)
  {
    if ((v40 & 0x20000000000000) == 0)
    {
      goto LABEL_37;
    }

    v42 = *(equalCopy + 635);
    if (self->_isLiked)
    {
      if ((*(equalCopy + 635) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 635))
    {
      goto LABEL_37;
    }
  }

  else if ((v40 & 0x20000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v34 & 0x10000000000000) != 0)
  {
    if ((v40 & 0x10000000000000) == 0)
    {
      goto LABEL_37;
    }

    v43 = *(equalCopy + 634);
    if (self->_isInWishList)
    {
      if ((*(equalCopy + 634) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 634))
    {
      goto LABEL_37;
    }
  }

  else if ((v40 & 0x10000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v34 & 0x800) != 0)
  {
    if ((v40 & 0x800) == 0 || self->_radioStationIdentifier != *(equalCopy + 12))
    {
      goto LABEL_37;
    }
  }

  else if ((v40 & 0x800) != 0)
  {
    goto LABEL_37;
  }

  radioStationName = self->_radioStationName;
  if (radioStationName | *(equalCopy + 64) && ![(NSString *)radioStationName isEqual:?])
  {
    goto LABEL_37;
  }

  radioStationString = self->_radioStationString;
  if (radioStationString | *(equalCopy + 65))
  {
    if (![(NSString *)radioStationString isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v46 = self->_has;
  v47 = *(equalCopy + 81);
  if ((*&v46 & 0x40) != 0)
  {
    if ((v47 & 0x40) == 0 || self->_iTunesStoreIdentifier != *(equalCopy + 7))
    {
      goto LABEL_37;
    }
  }

  else if ((v47 & 0x40) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v46 & 0x80) != 0)
  {
    if ((v47 & 0x80) == 0 || self->_iTunesStoreSubscriptionIdentifier != *(equalCopy + 8))
    {
      goto LABEL_37;
    }
  }

  else if ((v47 & 0x80) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v46 & 0x20) != 0)
  {
    if ((v47 & 0x20) == 0 || self->_iTunesStoreArtistIdentifier != *(equalCopy + 6))
    {
      goto LABEL_37;
    }
  }

  else if ((v47 & 0x20) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v46 & 0x10) != 0)
  {
    if ((v47 & 0x10) == 0 || self->_iTunesStoreAlbumIdentifier != *(equalCopy + 5))
    {
      goto LABEL_37;
    }
  }

  else if ((v47 & 0x10) != 0)
  {
    goto LABEL_37;
  }

  purchaseInfoData = self->_purchaseInfoData;
  if (purchaseInfoData | *(equalCopy + 63))
  {
    if (![(NSData *)purchaseInfoData isEqual:?])
    {
      goto LABEL_37;
    }

    v46 = self->_has;
  }

  v49 = *(equalCopy + 81);
  if ((*&v46 & 0x100000) != 0)
  {
    if ((v49 & 0x100000) == 0 || self->_defaultPlaybackRate != *(equalCopy + 80))
    {
      goto LABEL_37;
    }
  }

  else if ((v49 & 0x100000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v46 & 0x800000) != 0)
  {
    if ((v49 & 0x800000) == 0 || self->_downloadState != *(equalCopy + 88))
    {
      goto LABEL_37;
    }
  }

  else if ((v49 & 0x800000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v46 & 0x400000) != 0)
  {
    if ((v49 & 0x400000) == 0 || self->_downloadProgress != *(equalCopy + 87))
    {
      goto LABEL_37;
    }
  }

  else if ((v49 & 0x400000) != 0)
  {
    goto LABEL_37;
  }

  appMetricsData = self->_appMetricsData;
  if (appMetricsData | *(equalCopy + 23) && ![(NSData *)appMetricsData isEqual:?])
  {
    goto LABEL_37;
  }

  seriesName = self->_seriesName;
  if (seriesName | *(equalCopy + 67))
  {
    if (![(NSString *)seriesName isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v52 = self->_has;
  v53 = *(equalCopy + 81);
  if ((*&v52 & 0x20000000) != 0)
  {
    if ((v53 & 0x20000000) == 0 || self->_mediaType != *(equalCopy + 107))
    {
      goto LABEL_37;
    }
  }

  else if ((v53 & 0x20000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v52 & 0x10000000) != 0)
  {
    if ((v53 & 0x10000000) == 0 || self->_mediaSubType != *(equalCopy + 106))
    {
      goto LABEL_37;
    }
  }

  else if ((v53 & 0x10000000) != 0)
  {
    goto LABEL_37;
  }

  nowPlayingInfoData = self->_nowPlayingInfoData;
  if (nowPlayingInfoData | *(equalCopy + 54) && ![(NSData *)nowPlayingInfoData isEqual:?])
  {
    goto LABEL_37;
  }

  userInfoData = self->_userInfoData;
  if (userInfoData | *(equalCopy + 77))
  {
    if (![(NSData *)userInfoData isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v56 = *(equalCopy + 81);
  if ((*(&self->_has + 7) & 4) != 0)
  {
    if ((v56 & 0x400000000000000) == 0)
    {
      goto LABEL_37;
    }

    v57 = *(equalCopy + 640);
    if (self->_isSteerable)
    {
      if ((*(equalCopy + 640) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 640))
    {
      goto LABEL_37;
    }
  }

  else if ((v56 & 0x400000000000000) != 0)
  {
    goto LABEL_37;
  }

  artworkURL = self->_artworkURL;
  if (artworkURL | *(equalCopy + 28) && ![(NSString *)artworkURL isEqual:?])
  {
    goto LABEL_37;
  }

  lyricsURL = self->_lyricsURL;
  if (lyricsURL | *(equalCopy + 52))
  {
    if (![(NSString *)lyricsURL isEqual:?])
    {
      goto LABEL_37;
    }
  }

  deviceSpecificUserInfoData = self->_deviceSpecificUserInfoData;
  if (deviceSpecificUserInfoData | *(equalCopy + 41))
  {
    if (![(NSData *)deviceSpecificUserInfoData isEqual:?])
    {
      goto LABEL_37;
    }
  }

  collectionInfoData = self->_collectionInfoData;
  if (collectionInfoData | *(equalCopy + 36))
  {
    if (![(NSData *)collectionInfoData isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v62 = self->_has;
  v63 = *(equalCopy + 81);
  if ((*&v62 & 4) != 0)
  {
    if ((v63 & 4) == 0 || self->_elapsedTimeTimestamp != *(equalCopy + 3))
    {
      goto LABEL_37;
    }
  }

  else if ((v63 & 4) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v62 & 0x100) != 0)
  {
    if ((v63 & 0x100) == 0 || self->_inferredTimestamp != *(equalCopy + 9))
    {
      goto LABEL_37;
    }
  }

  else if ((v63 & 0x100) != 0)
  {
    goto LABEL_37;
  }

  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier | *(equalCopy + 68))
  {
    if (![(NSString *)serviceIdentifier isEqual:?])
    {
      goto LABEL_37;
    }

    v62 = self->_has;
  }

  v65 = *(equalCopy + 81);
  if ((*&v62 & 0x40000) != 0)
  {
    if ((v65 & 0x40000) == 0 || self->_artworkDataWidthDeprecated != *(equalCopy + 49))
    {
      goto LABEL_37;
    }
  }

  else if ((v65 & 0x40000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v62 & 0x20000) != 0)
  {
    if ((v65 & 0x20000) == 0 || self->_artworkDataHeightDeprecated != *(equalCopy + 48))
    {
      goto LABEL_37;
    }
  }

  else if ((v65 & 0x20000) != 0)
  {
    goto LABEL_37;
  }

  currentPlaybackDateData = self->_currentPlaybackDateData;
  if (currentPlaybackDateData | *(equalCopy + 39) && ![(NSData *)currentPlaybackDateData isEqual:?])
  {
    goto LABEL_37;
  }

  artworkIdentifier = self->_artworkIdentifier;
  if (artworkIdentifier | *(equalCopy + 26))
  {
    if (![(NSString *)artworkIdentifier isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v68 = self->_has;
  v69 = *(equalCopy + 81);
  if ((*&v68 & 0x40000000000000) != 0)
  {
    if ((v69 & 0x40000000000000) == 0)
    {
      goto LABEL_37;
    }

    v70 = *(equalCopy + 636);
    if (self->_isLoading)
    {
      if ((*(equalCopy + 636) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 636))
    {
      goto LABEL_37;
    }
  }

  else if ((v69 & 0x40000000000000) != 0)
  {
    goto LABEL_37;
  }

  artworkURLTemplatesData = self->_artworkURLTemplatesData;
  if (artworkURLTemplatesData | *(equalCopy + 29))
  {
    if (![(NSData *)artworkURLTemplatesData isEqual:?])
    {
      goto LABEL_37;
    }

    v68 = self->_has;
  }

  v72 = *(equalCopy + 81);
  if ((*&v68 & 0x200) != 0)
  {
    if ((v72 & 0x200) == 0 || self->_legacyUniqueIdentifier != *(equalCopy + 10))
    {
      goto LABEL_37;
    }
  }

  else if ((v72 & 0x200) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v68 & 0x4000000) != 0)
  {
    if ((v72 & 0x4000000) == 0 || self->_episodeType != *(equalCopy + 94))
    {
      goto LABEL_37;
    }
  }

  else if ((v72 & 0x4000000) != 0)
  {
    goto LABEL_37;
  }

  artworkFileURL = self->_artworkFileURL;
  if (artworkFileURL | *(equalCopy + 25) && ![(NSString *)artworkFileURL isEqual:?])
  {
    goto LABEL_37;
  }

  brandIdentifier = self->_brandIdentifier;
  if (brandIdentifier | *(equalCopy + 32))
  {
    if (![(NSString *)brandIdentifier isEqual:?])
    {
      goto LABEL_37;
    }
  }

  localizedDurationString = self->_localizedDurationString;
  if (localizedDurationString | *(equalCopy + 51))
  {
    if (![(NSString *)localizedDurationString isEqual:?])
    {
      goto LABEL_37;
    }
  }

  albumYear = self->_albumYear;
  if (albumYear | *(equalCopy + 21))
  {
    if (![(NSString *)albumYear isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v77 = self->_has;
  v78 = *(equalCopy + 81);
  if ((*&v77 & 0x4000000000) != 0)
  {
    if ((v78 & 0x4000000000) == 0 || self->_songTraits != *(equalCopy + 138))
    {
      goto LABEL_37;
    }
  }

  else if ((v78 & 0x4000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v77 & 0x10000) != 0)
  {
    if ((v78 & 0x10000) == 0 || self->_albumTraits != *(equalCopy + 40))
    {
      goto LABEL_37;
    }
  }

  else if ((v78 & 0x10000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v77 & 0x400000000) != 0)
  {
    if ((v78 & 0x400000000) == 0 || self->_playlistTraits != *(equalCopy + 119))
    {
      goto LABEL_37;
    }
  }

  else if ((v78 & 0x400000000) != 0)
  {
    goto LABEL_37;
  }

  preferredFormat = self->_preferredFormat;
  if (preferredFormat | *(equalCopy + 61) && ![(_MRAudioFormatProtobuf *)preferredFormat isEqual:?])
  {
    goto LABEL_37;
  }

  activeFormat = self->_activeFormat;
  if (activeFormat | *(equalCopy + 16))
  {
    if (![(_MRAudioFormatProtobuf *)activeFormat isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v81 = self->_has;
  v82 = *(equalCopy + 81);
  if ((*&v81 & 0x8000) != 0)
  {
    if ((v82 & 0x8000) == 0 || self->_activeFormatJustification != *(equalCopy + 34))
    {
      goto LABEL_37;
    }
  }

  else if ((v82 & 0x8000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v81 & 0x8000000) != 0)
  {
    if ((v82 & 0x8000000) == 0 || self->_formatTierPreference != *(equalCopy + 95))
    {
      goto LABEL_37;
    }
  }

  else if ((v82 & 0x8000000) != 0)
  {
    goto LABEL_37;
  }

  audioRoute = self->_audioRoute;
  if (audioRoute | *(equalCopy + 31) && ![(_MRAudioRouteProtobuf *)audioRoute isEqual:?])
  {
    goto LABEL_37;
  }

  alternativeFormats = self->_alternativeFormats;
  if (alternativeFormats | *(equalCopy + 22))
  {
    if (![(NSMutableArray *)alternativeFormats isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v85 = self->_has;
  v86 = *(equalCopy + 81);
  if ((*&v85 & 0x400000000000) != 0)
  {
    if ((v86 & 0x400000000000) == 0)
    {
      goto LABEL_37;
    }

    v87 = *(equalCopy + 628);
    if (self->_isAdvertisement)
    {
      if ((*(equalCopy + 628) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 628))
    {
      goto LABEL_37;
    }
  }

  else if ((v86 & 0x400000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v85 & 0x100000000000) != 0)
  {
    if ((v86 & 0x100000000000) == 0)
    {
      goto LABEL_37;
    }

    v88 = *(equalCopy + 626);
    if (self->_hasAlternativeFormats)
    {
      if ((*(equalCopy + 626) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 626))
    {
      goto LABEL_37;
    }
  }

  else if ((v86 & 0x100000000000) != 0)
  {
    goto LABEL_37;
  }

  participantName = self->_participantName;
  if (participantName | *(equalCopy + 57) && ![(NSString *)participantName isEqual:?])
  {
    goto LABEL_37;
  }

  participantIdentifier = self->_participantIdentifier;
  if (participantIdentifier | *(equalCopy + 56))
  {
    if (![(NSString *)participantIdentifier isEqual:?])
    {
      goto LABEL_37;
    }
  }

  classicalWork = self->_classicalWork;
  if (classicalWork | *(equalCopy + 34))
  {
    if (![(NSString *)classicalWork isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v92 = self->_has;
  v93 = *(equalCopy + 81);
  if ((*&v92 & 0x2000) != 0)
  {
    if ((v93 & 0x2000) == 0 || self->_reportingAdamID != *(equalCopy + 14))
    {
      goto LABEL_37;
    }
  }

  else if ((v93 & 0x2000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v92 & 0x400) != 0)
  {
    if ((v93 & 0x400) == 0 || self->_lyricsAdamID != *(equalCopy + 11))
    {
      goto LABEL_37;
    }
  }

  else if ((v93 & 0x400) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v92 & 8) != 0)
  {
    if ((v93 & 8) == 0 || self->_iTunesStoreAlbumArtistIdentifier != *(equalCopy + 4))
    {
      goto LABEL_37;
    }
  }

  else if ((v93 & 8) != 0)
  {
    goto LABEL_37;
  }

  durationStringLocalizationKey = self->_durationStringLocalizationKey;
  if (durationStringLocalizationKey | *(equalCopy + 45))
  {
    if (![(NSString *)durationStringLocalizationKey isEqual:?])
    {
      goto LABEL_37;
    }

    v92 = self->_has;
  }

  v95 = *(equalCopy + 81);
  if ((*&v92 & 0x100000000000000) != 0)
  {
    if ((v95 & 0x100000000000000) == 0)
    {
      goto LABEL_37;
    }

    v96 = *(equalCopy + 638);
    if (self->_isResolvableParticipant)
    {
      if ((*(equalCopy + 638) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 638))
    {
      goto LABEL_37;
    }
  }

  else if ((v95 & 0x100000000000000) != 0)
  {
    goto LABEL_37;
  }

  internationalStandardRecordingCode = self->_internationalStandardRecordingCode;
  if (internationalStandardRecordingCode | *(equalCopy + 49))
  {
    if (![(NSString *)internationalStandardRecordingCode isEqual:?])
    {
      goto LABEL_37;
    }

    v92 = self->_has;
  }

  v98 = *(equalCopy + 81);
  if ((*&v92 & 0x8000000000000) != 0)
  {
    if ((v98 & 0x8000000000000) == 0)
    {
      goto LABEL_37;
    }

    v99 = *(equalCopy + 633);
    if (self->_isInTransition)
    {
      if ((*(equalCopy + 633) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 633))
    {
      goto LABEL_37;
    }
  }

  else if ((v98 & 0x8000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v92 & 0x80000000000) != 0)
  {
    if ((v98 & 0x80000000000) == 0)
    {
      goto LABEL_37;
    }

    v100 = *(equalCopy + 625);
    if (self->_excludeFromSuggestions)
    {
      if ((*(equalCopy + 625) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(equalCopy + 625))
    {
      goto LABEL_37;
    }
  }

  else if ((v98 & 0x80000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((*&v92 & 0x4000000000000000) == 0)
  {
    if ((v98 & 0x4000000000000000) == 0)
    {
      goto LABEL_473;
    }

LABEL_37:
    v17 = 0;
    goto LABEL_38;
  }

  if ((v98 & 0x4000000000000000) == 0)
  {
    goto LABEL_37;
  }

  v101 = *(equalCopy + 644);
  if (self->_transcriptAlignmentsAvailable)
  {
    if (*(equalCopy + 644))
    {
      goto LABEL_473;
    }

    goto LABEL_37;
  }

  if (*(equalCopy + 644))
  {
    goto LABEL_37;
  }

LABEL_473:
  subtitleShort = self->_subtitleShort;
  if (subtitleShort | *(equalCopy + 71) && ![(NSString *)subtitleShort isEqual:?])
  {
    goto LABEL_37;
  }

  transitionInfoData = self->_transitionInfoData;
  if (transitionInfoData | *(equalCopy + 76))
  {
    v17 = [(NSData *)transitionInfoData isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_38:

  return v17;
}

- (unint64_t)hash
{
  v180 = [(NSString *)self->_title hash];
  v179 = [(NSString *)self->_subtitle hash];
  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
    v178 = 0;
    if ((*&has & 0x80000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v177 = 0;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v178 = 2654435761 * self->_isContainer;
  if ((*&has & 0x80000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v177 = 2654435761 * self->_isPlayable;
  if ((*&has & 0x100000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  playbackProgress = self->_playbackProgress;
  if (playbackProgress < 0.0)
  {
    playbackProgress = -playbackProgress;
  }

  *v3.i32 = floorf(playbackProgress + 0.5);
  v7 = (playbackProgress - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9 = 2654435761u * *vbslq_s8(v8, v4, v3).i32;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabsf(v7);
  }

LABEL_11:
  v176 = v9;
  v175 = [(NSString *)self->_albumName hash];
  v174 = [(NSString *)self->_trackArtistName hash];
  v173 = [(NSString *)self->_albumArtistName hash];
  v172 = [(NSString *)self->_directorName hash];
  v12 = self->_has;
  if ((*&v12 & 0x2000000000) == 0)
  {
    v171 = 0;
    if ((*&v12 & 0x2000000) != 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v170 = 0;
    if ((*&v12 & 0x1000) != 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  v171 = 2654435761 * self->_seasonNumber;
  if ((*&v12 & 0x2000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v170 = 2654435761 * self->_episodeNumber;
  if ((*&v12 & 0x1000) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  releaseDate = self->_releaseDate;
  if (releaseDate < 0.0)
  {
    releaseDate = -releaseDate;
  }

  *v10.i64 = floor(releaseDate + 0.5);
  v14 = (releaseDate - *v10.i64) * 1.84467441e19;
  *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v10 = vbslq_s8(vnegq_f64(v15), v11, v10);
  v16 = 2654435761u * *v10.i64;
  if (v14 >= 0.0)
  {
    if (v14 > 0.0)
    {
      v16 += v14;
    }
  }

  else
  {
    v16 -= fabs(v14);
  }

LABEL_21:
  if ((*&v12 & 0x80000000) != 0)
  {
    v168 = 2654435761 * self->_playCount;
  }

  else
  {
    v168 = 0;
  }

  v169 = v16;
  if (*&v12)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v10.i64 = floor(duration + 0.5);
    v19 = (duration - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v17 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v11, v10).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  v167 = v17;
  v166 = [(NSString *)self->_localizedContentRating hash];
  v21 = self->_has;
  if ((*&v21 & 0x4000000000000) != 0)
  {
    v165 = 2654435761 * self->_isExplicitItem;
    if ((*&v21 & 0x800000000) != 0)
    {
LABEL_38:
      v164 = 2654435761 * self->_playlistType;
      if ((*&v21 & 0x1000000000) != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v165 = 0;
    if ((*&v21 & 0x800000000) != 0)
    {
      goto LABEL_38;
    }
  }

  v164 = 0;
  if ((*&v21 & 0x1000000000) != 0)
  {
LABEL_39:
    v163 = 2654435761 * self->_radioStationType;
    if ((*&v21 & 0x40000000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_51;
  }

LABEL_50:
  v163 = 0;
  if ((*&v21 & 0x40000000000) != 0)
  {
LABEL_40:
    v162 = 2654435761 * self->_artworkAvailable;
    if ((*&v21 & 0x200000000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_52;
  }

LABEL_51:
  v162 = 0;
  if ((*&v21 & 0x200000000000) != 0)
  {
LABEL_41:
    v161 = 2654435761 * self->_infoAvailable;
    if ((*&v21 & 0x1000000000000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_53;
  }

LABEL_52:
  v161 = 0;
  if ((*&v21 & 0x1000000000000000) != 0)
  {
LABEL_42:
    v160 = 2654435761 * self->_languageOptionsAvailable;
    if ((*&v21 & 0x40000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

LABEL_53:
  v160 = 0;
  if ((*&v21 & 0x40000000) != 0)
  {
LABEL_43:
    v159 = 2654435761 * self->_numberOfSections;
    if ((*&v21 & 0x2000000000000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

LABEL_54:
  v159 = 0;
  if ((*&v21 & 0x2000000000000000) != 0)
  {
LABEL_44:
    v158 = 2654435761 * self->_lyricsAvailable;
    if ((*&v21 & 0x1000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_56;
  }

LABEL_55:
  v158 = 0;
  if ((*&v21 & 0x1000000) != 0)
  {
LABEL_45:
    v157 = 2654435761 * self->_editingStyleFlags;
    if ((*&v21 & 0x800000000000000) != 0)
    {
      goto LABEL_46;
    }

LABEL_57:
    v156 = 0;
    if ((*&v21 & 0x2000000000000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_58;
  }

LABEL_56:
  v157 = 0;
  if ((*&v21 & 0x800000000000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_46:
  v156 = 2654435761 * self->_isStreamingContent;
  if ((*&v21 & 0x2000000000000) != 0)
  {
LABEL_47:
    v155 = 2654435761 * self->_isCurrentlyPlaying;
    goto LABEL_59;
  }

LABEL_58:
  v155 = 0;
LABEL_59:
  v154 = [(NSString *)self->_collectionIdentifier hash];
  v153 = [(NSString *)self->_profileIdentifier hash];
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    startTime = self->_startTime;
    if (startTime < 0.0)
    {
      startTime = -startTime;
    }

    *v22.i64 = floor(startTime + 0.5);
    v26 = (startTime - *v22.i64) * 1.84467441e19;
    *v23.i64 = *v22.i64 - trunc(*v22.i64 * 5.42101086e-20) * 1.84467441e19;
    v27.f64[0] = NAN;
    v27.f64[1] = NAN;
    v24 = 2654435761u * *vbslq_s8(vnegq_f64(v27), v23, v22).i64;
    if (v26 >= 0.0)
    {
      if (v26 > 0.0)
      {
        v24 += v26;
      }
    }

    else
    {
      v24 -= fabs(v26);
    }
  }

  else
  {
    v24 = 0;
  }

  v152 = v24;
  v151 = [(NSString *)self->_artworkMIMEType hash];
  v150 = [(NSString *)self->_assetURLString hash];
  v149 = [(NSString *)self->_composer hash];
  v30 = self->_has;
  if ((*&v30 & 0x200000) != 0)
  {
    v148 = 2654435761 * self->_discNumber;
    if ((*&v30 & 2) != 0)
    {
      goto LABEL_69;
    }

LABEL_74:
    v34 = 0;
    goto LABEL_75;
  }

  v148 = 0;
  if ((*&v30 & 2) == 0)
  {
    goto LABEL_74;
  }

LABEL_69:
  elapsedTime = self->_elapsedTime;
  if (elapsedTime < 0.0)
  {
    elapsedTime = -elapsedTime;
  }

  *v28.i64 = floor(elapsedTime + 0.5);
  v32 = (elapsedTime - *v28.i64) * 1.84467441e19;
  *v29.i64 = *v28.i64 - trunc(*v28.i64 * 5.42101086e-20) * 1.84467441e19;
  v33.f64[0] = NAN;
  v33.f64[1] = NAN;
  v34 = 2654435761u * *vbslq_s8(vnegq_f64(v33), v29, v28).i64;
  if (v32 >= 0.0)
  {
    if (v32 > 0.0)
    {
      v34 += v32;
    }
  }

  else
  {
    v34 -= fabs(v32);
  }

LABEL_75:
  v147 = v34;
  v146 = [(NSString *)self->_genre hash];
  v37 = self->_has;
  if ((*&v37 & 0x800000000000) != 0)
  {
    v145 = 2654435761 * self->_isAlwaysLive;
    if ((*&v37 & 0x200000000) != 0)
    {
      goto LABEL_77;
    }

LABEL_82:
    v41 = 0;
    goto LABEL_83;
  }

  v145 = 0;
  if ((*&v37 & 0x200000000) == 0)
  {
    goto LABEL_82;
  }

LABEL_77:
  playbackRate = self->_playbackRate;
  if (playbackRate < 0.0)
  {
    playbackRate = -playbackRate;
  }

  *v35.i32 = floorf(playbackRate + 0.5);
  v39 = (playbackRate - *v35.i32) * 1.8447e19;
  *v36.i32 = *v35.i32 - (truncf(*v35.i32 * 5.421e-20) * 1.8447e19);
  v40.i64[0] = 0x8000000080000000;
  v40.i64[1] = 0x8000000080000000;
  v41 = 2654435761u * *vbslq_s8(v40, v36, v35).i32;
  if (v39 >= 0.0)
  {
    if (v39 > 0.0)
    {
      v41 += v39;
    }
  }

  else
  {
    v41 -= fabsf(v39);
  }

LABEL_83:
  if ((*&v37 & 0x80000) == 0)
  {
    v143 = 0;
    if ((*&v37 & 0x8000000000) != 0)
    {
      goto LABEL_85;
    }

LABEL_88:
    v142 = 0;
    if ((*&v37 & 0x10000000000) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  v143 = 2654435761 * self->_chapterCount;
  if ((*&v37 & 0x8000000000) == 0)
  {
    goto LABEL_88;
  }

LABEL_85:
  v142 = 2654435761 * self->_totalDiscCount;
  if ((*&v37 & 0x10000000000) != 0)
  {
LABEL_86:
    v141 = 2654435761 * self->_totalTrackCount;
    goto LABEL_90;
  }

LABEL_89:
  v141 = 0;
LABEL_90:
  v144 = v41;
  if ((*&v37 & 0x20000000000) != 0)
  {
    v140 = 2654435761 * self->_trackNumber;
  }

  else
  {
    v140 = 0;
  }

  v139 = [(NSString *)self->_contentIdentifier hash];
  v42 = self->_has;
  if ((*&v42 & 0x200000000000000) != 0)
  {
    v138 = 2654435761 * self->_isSharable;
    if ((*&v42 & 0x20000000000000) != 0)
    {
LABEL_95:
      v137 = 2654435761 * self->_isLiked;
      if ((*&v42 & 0x10000000000000) != 0)
      {
        goto LABEL_96;
      }

LABEL_100:
      v136 = 0;
      if ((*&v42 & 0x800) != 0)
      {
        goto LABEL_97;
      }

      goto LABEL_101;
    }
  }

  else
  {
    v138 = 0;
    if ((*&v42 & 0x20000000000000) != 0)
    {
      goto LABEL_95;
    }
  }

  v137 = 0;
  if ((*&v42 & 0x10000000000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_96:
  v136 = 2654435761 * self->_isInWishList;
  if ((*&v42 & 0x800) != 0)
  {
LABEL_97:
    v135 = 2654435761 * self->_radioStationIdentifier;
    goto LABEL_102;
  }

LABEL_101:
  v135 = 0;
LABEL_102:
  v134 = [(NSString *)self->_radioStationName hash];
  v133 = [(NSString *)self->_radioStationString hash];
  v43 = self->_has;
  if ((*&v43 & 0x40) != 0)
  {
    v132 = 2654435761 * self->_iTunesStoreIdentifier;
    if ((*&v43 & 0x80) != 0)
    {
LABEL_104:
      v131 = 2654435761 * self->_iTunesStoreSubscriptionIdentifier;
      if ((*&v43 & 0x20) != 0)
      {
        goto LABEL_105;
      }

LABEL_109:
      v130 = 0;
      if ((*&v43 & 0x10) != 0)
      {
        goto LABEL_106;
      }

      goto LABEL_110;
    }
  }

  else
  {
    v132 = 0;
    if ((*&v43 & 0x80) != 0)
    {
      goto LABEL_104;
    }
  }

  v131 = 0;
  if ((*&v43 & 0x20) == 0)
  {
    goto LABEL_109;
  }

LABEL_105:
  v130 = 2654435761 * self->_iTunesStoreArtistIdentifier;
  if ((*&v43 & 0x10) != 0)
  {
LABEL_106:
    v129 = 2654435761 * self->_iTunesStoreAlbumIdentifier;
    goto LABEL_111;
  }

LABEL_110:
  v129 = 0;
LABEL_111:
  v128 = [(NSData *)self->_purchaseInfoData hash];
  v46 = self->_has;
  if ((*&v46 & 0x100000) != 0)
  {
    defaultPlaybackRate = self->_defaultPlaybackRate;
    if (defaultPlaybackRate < 0.0)
    {
      defaultPlaybackRate = -defaultPlaybackRate;
    }

    *v44.i32 = floorf(defaultPlaybackRate + 0.5);
    v49 = (defaultPlaybackRate - *v44.i32) * 1.8447e19;
    *v45.i32 = *v44.i32 - (truncf(*v44.i32 * 5.421e-20) * 1.8447e19);
    v50.i64[0] = 0x8000000080000000;
    v50.i64[1] = 0x8000000080000000;
    v44 = vbslq_s8(v50, v45, v44);
    v47 = 2654435761u * *v44.i32;
    if (v49 >= 0.0)
    {
      if (v49 > 0.0)
      {
        v47 += v49;
      }
    }

    else
    {
      v47 -= fabsf(v49);
    }
  }

  else
  {
    v47 = 0;
  }

  if ((*&v46 & 0x800000) != 0)
  {
    v126 = 2654435761 * self->_downloadState;
  }

  else
  {
    v126 = 0;
  }

  v127 = v47;
  if ((*&v46 & 0x400000) != 0)
  {
    downloadProgress = self->_downloadProgress;
    if (downloadProgress < 0.0)
    {
      downloadProgress = -downloadProgress;
    }

    *v44.i32 = floorf(downloadProgress + 0.5);
    v53 = (downloadProgress - *v44.i32) * 1.8447e19;
    *v45.i32 = *v44.i32 - (truncf(*v44.i32 * 5.421e-20) * 1.8447e19);
    v54.i64[0] = 0x8000000080000000;
    v54.i64[1] = 0x8000000080000000;
    v51 = 2654435761u * *vbslq_s8(v54, v45, v44).i32;
    if (v53 >= 0.0)
    {
      if (v53 > 0.0)
      {
        v51 += v53;
      }
    }

    else
    {
      v51 -= fabsf(v53);
    }
  }

  else
  {
    v51 = 0;
  }

  v125 = v51;
  v124 = [(NSData *)self->_appMetricsData hash];
  v123 = [(NSString *)self->_seriesName hash];
  v55 = self->_has;
  if ((*&v55 & 0x20000000) != 0)
  {
    v122 = 2654435761 * self->_mediaType;
    if ((*&v55 & 0x10000000) != 0)
    {
      goto LABEL_136;
    }
  }

  else
  {
    v122 = 0;
    if ((*&v55 & 0x10000000) != 0)
    {
LABEL_136:
      v121 = 2654435761 * self->_mediaSubType;
      goto LABEL_139;
    }
  }

  v121 = 0;
LABEL_139:
  v120 = [(NSData *)self->_nowPlayingInfoData hash];
  v119 = [(NSData *)self->_userInfoData hash];
  if ((*(&self->_has + 7) & 4) != 0)
  {
    v118 = 2654435761 * self->_isSteerable;
  }

  else
  {
    v118 = 0;
  }

  v117 = [(NSString *)self->_artworkURL hash];
  v116 = [(NSString *)self->_lyricsURL hash];
  v115 = [(NSData *)self->_deviceSpecificUserInfoData hash];
  v114 = [(NSData *)self->_collectionInfoData hash];
  v58 = self->_has;
  if ((*&v58 & 4) != 0)
  {
    elapsedTimeTimestamp = self->_elapsedTimeTimestamp;
    if (elapsedTimeTimestamp < 0.0)
    {
      elapsedTimeTimestamp = -elapsedTimeTimestamp;
    }

    *v56.i64 = floor(elapsedTimeTimestamp + 0.5);
    v61 = (elapsedTimeTimestamp - *v56.i64) * 1.84467441e19;
    *v57.i64 = *v56.i64 - trunc(*v56.i64 * 5.42101086e-20) * 1.84467441e19;
    v62.f64[0] = NAN;
    v62.f64[1] = NAN;
    v56 = vbslq_s8(vnegq_f64(v62), v57, v56);
    v59 = 2654435761u * *v56.i64;
    if (v61 >= 0.0)
    {
      if (v61 > 0.0)
      {
        v59 += v61;
      }
    }

    else
    {
      v59 -= fabs(v61);
    }
  }

  else
  {
    v59 = 0;
  }

  v113 = v59;
  if ((*&v58 & 0x100) != 0)
  {
    inferredTimestamp = self->_inferredTimestamp;
    if (inferredTimestamp < 0.0)
    {
      inferredTimestamp = -inferredTimestamp;
    }

    *v56.i64 = floor(inferredTimestamp + 0.5);
    v65 = (inferredTimestamp - *v56.i64) * 1.84467441e19;
    *v57.i64 = *v56.i64 - trunc(*v56.i64 * 5.42101086e-20) * 1.84467441e19;
    v66.f64[0] = NAN;
    v66.f64[1] = NAN;
    v63 = 2654435761u * *vbslq_s8(vnegq_f64(v66), v57, v56).i64;
    if (v65 >= 0.0)
    {
      if (v65 > 0.0)
      {
        v63 += v65;
      }
    }

    else
    {
      v63 -= fabs(v65);
    }
  }

  else
  {
    v63 = 0;
  }

  v112 = v63;
  v111 = [(NSString *)self->_serviceIdentifier hash];
  v67 = self->_has;
  if ((*&v67 & 0x40000) != 0)
  {
    v110 = 2654435761 * self->_artworkDataWidthDeprecated;
    if ((*&v67 & 0x20000) != 0)
    {
      goto LABEL_160;
    }
  }

  else
  {
    v110 = 0;
    if ((*&v67 & 0x20000) != 0)
    {
LABEL_160:
      v109 = 2654435761 * self->_artworkDataHeightDeprecated;
      goto LABEL_163;
    }
  }

  v109 = 0;
LABEL_163:
  v108 = [(NSData *)self->_currentPlaybackDateData hash];
  v107 = [(NSString *)self->_artworkIdentifier hash];
  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    v106 = 2654435761 * self->_isLoading;
  }

  else
  {
    v106 = 0;
  }

  v105 = [(NSData *)self->_artworkURLTemplatesData hash];
  v68 = self->_has;
  if ((*&v68 & 0x200) != 0)
  {
    v104 = 2654435761 * self->_legacyUniqueIdentifier;
    if ((*&v68 & 0x4000000) != 0)
    {
      goto LABEL_168;
    }
  }

  else
  {
    v104 = 0;
    if ((*&v68 & 0x4000000) != 0)
    {
LABEL_168:
      v103 = 2654435761 * self->_episodeType;
      goto LABEL_171;
    }
  }

  v103 = 0;
LABEL_171:
  v102 = [(NSString *)self->_artworkFileURL hash];
  v101 = [(NSString *)self->_brandIdentifier hash];
  v100 = [(NSString *)self->_localizedDurationString hash];
  v99 = [(NSString *)self->_albumYear hash];
  v69 = self->_has;
  if ((*&v69 & 0x4000000000) == 0)
  {
    v98 = 0;
    if ((*&v69 & 0x10000) != 0)
    {
      goto LABEL_173;
    }

LABEL_176:
    v97 = 0;
    if ((*&v69 & 0x400000000) != 0)
    {
      goto LABEL_174;
    }

    goto LABEL_177;
  }

  v98 = 2654435761 * self->_songTraits;
  if ((*&v69 & 0x10000) == 0)
  {
    goto LABEL_176;
  }

LABEL_173:
  v97 = 2654435761 * self->_albumTraits;
  if ((*&v69 & 0x400000000) != 0)
  {
LABEL_174:
    v96 = 2654435761 * self->_playlistTraits;
    goto LABEL_178;
  }

LABEL_177:
  v96 = 0;
LABEL_178:
  v95 = [(_MRAudioFormatProtobuf *)self->_preferredFormat hash];
  v94 = [(_MRAudioFormatProtobuf *)self->_activeFormat hash];
  v70 = self->_has;
  if ((*&v70 & 0x8000) != 0)
  {
    v93 = 2654435761 * self->_activeFormatJustification;
    if ((*&v70 & 0x8000000) != 0)
    {
      goto LABEL_180;
    }
  }

  else
  {
    v93 = 0;
    if ((*&v70 & 0x8000000) != 0)
    {
LABEL_180:
      v92 = 2654435761 * self->_formatTierPreference;
      goto LABEL_183;
    }
  }

  v92 = 0;
LABEL_183:
  v91 = [(_MRAudioRouteProtobuf *)self->_audioRoute hash];
  v90 = [(NSMutableArray *)self->_alternativeFormats hash];
  v71 = self->_has;
  if ((*&v71 & 0x400000000000) != 0)
  {
    v89 = 2654435761 * self->_isAdvertisement;
    if ((*&v71 & 0x100000000000) != 0)
    {
      goto LABEL_185;
    }
  }

  else
  {
    v89 = 0;
    if ((*&v71 & 0x100000000000) != 0)
    {
LABEL_185:
      v88 = 2654435761 * self->_hasAlternativeFormats;
      goto LABEL_188;
    }
  }

  v88 = 0;
LABEL_188:
  v87 = [(NSString *)self->_participantName hash];
  v72 = [(NSString *)self->_participantIdentifier hash];
  v73 = [(NSString *)self->_classicalWork hash];
  v74 = self->_has;
  if ((*&v74 & 0x2000) == 0)
  {
    v75 = 0;
    if ((*&v74 & 0x400) != 0)
    {
      goto LABEL_190;
    }

LABEL_193:
    v76 = 0;
    if ((*&v74 & 8) != 0)
    {
      goto LABEL_191;
    }

    goto LABEL_194;
  }

  v75 = 2654435761 * self->_reportingAdamID;
  if ((*&v74 & 0x400) == 0)
  {
    goto LABEL_193;
  }

LABEL_190:
  v76 = 2654435761 * self->_lyricsAdamID;
  if ((*&v74 & 8) != 0)
  {
LABEL_191:
    v77 = 2654435761 * self->_iTunesStoreAlbumArtistIdentifier;
    goto LABEL_195;
  }

LABEL_194:
  v77 = 0;
LABEL_195:
  v78 = [(NSString *)self->_durationStringLocalizationKey hash];
  if (*(&self->_has + 7))
  {
    v79 = 2654435761 * self->_isResolvableParticipant;
  }

  else
  {
    v79 = 0;
  }

  v80 = [(NSString *)self->_internationalStandardRecordingCode hash];
  v81 = self->_has;
  if ((*&v81 & 0x8000000000000) == 0)
  {
    v82 = 0;
    if ((*&v81 & 0x80000000000) != 0)
    {
      goto LABEL_200;
    }

LABEL_203:
    v83 = 0;
    if ((*&v81 & 0x4000000000000000) != 0)
    {
      goto LABEL_201;
    }

LABEL_204:
    v84 = 0;
    goto LABEL_205;
  }

  v82 = 2654435761 * self->_isInTransition;
  if ((*&v81 & 0x80000000000) == 0)
  {
    goto LABEL_203;
  }

LABEL_200:
  v83 = 2654435761 * self->_excludeFromSuggestions;
  if ((*&v81 & 0x4000000000000000) == 0)
  {
    goto LABEL_204;
  }

LABEL_201:
  v84 = 2654435761 * self->_transcriptAlignmentsAvailable;
LABEL_205:
  v85 = v76 ^ v77 ^ v78 ^ v79 ^ v80 ^ v82 ^ v83 ^ v84 ^ [(NSString *)self->_subtitleShort hash];
  return v179 ^ v180 ^ v178 ^ v177 ^ v176 ^ v175 ^ v174 ^ v173 ^ v172 ^ v171 ^ v170 ^ v169 ^ v168 ^ v167 ^ v166 ^ v165 ^ v164 ^ v163 ^ v162 ^ v161 ^ v160 ^ v159 ^ v158 ^ v157 ^ v156 ^ v155 ^ v154 ^ v153 ^ v152 ^ v151 ^ v150 ^ v149 ^ v148 ^ v147 ^ v146 ^ v145 ^ v144 ^ v143 ^ v142 ^ v141 ^ v140 ^ v139 ^ v138 ^ v137 ^ v136 ^ v135 ^ v134 ^ v133 ^ v132 ^ v131 ^ v130 ^ v129 ^ v128 ^ v127 ^ v126 ^ v125 ^ v124 ^ v123 ^ v122 ^ v121 ^ v120 ^ v119 ^ v118 ^ v117 ^ v116 ^ v115 ^ v114 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v72 ^ v73 ^ v75 ^ v85 ^ [(NSData *)self->_transitionInfoData hash];
}

- (void)mergeFrom:(id)from
{
  v39 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 72))
  {
    [(_MRContentItemMetadataProtobuf *)self setTitle:?];
  }

  if (*(fromCopy + 70))
  {
    [(_MRContentItemMetadataProtobuf *)self setSubtitle:?];
  }

  v5 = *(fromCopy + 81);
  if ((v5 & 0x1000000000000) != 0)
  {
    self->_isContainer = *(fromCopy + 630);
    *&self->_has |= 0x1000000000000uLL;
    v5 = *(fromCopy + 81);
    if ((v5 & 0x80000000000000) == 0)
    {
LABEL_7:
      if ((v5 & 0x100000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((v5 & 0x80000000000000) == 0)
  {
    goto LABEL_7;
  }

  self->_isPlayable = *(fromCopy + 637);
  *&self->_has |= 0x80000000000000uLL;
  if ((*(fromCopy + 81) & 0x100000000) != 0)
  {
LABEL_8:
    self->_playbackProgress = *(fromCopy + 117);
    *&self->_has |= 0x100000000uLL;
  }

LABEL_9:
  if (*(fromCopy + 19))
  {
    [(_MRContentItemMetadataProtobuf *)self setAlbumName:?];
  }

  if (*(fromCopy + 74))
  {
    [(_MRContentItemMetadataProtobuf *)self setTrackArtistName:?];
  }

  if (*(fromCopy + 18))
  {
    [(_MRContentItemMetadataProtobuf *)self setAlbumArtistName:?];
  }

  if (*(fromCopy + 42))
  {
    [(_MRContentItemMetadataProtobuf *)self setDirectorName:?];
  }

  v6 = *(fromCopy + 81);
  if ((v6 & 0x2000000000) != 0)
  {
    self->_seasonNumber = *(fromCopy + 133);
    *&self->_has |= 0x2000000000uLL;
    v6 = *(fromCopy + 81);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_19:
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_148;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_19;
  }

  self->_episodeNumber = *(fromCopy + 93);
  *&self->_has |= 0x2000000uLL;
  v6 = *(fromCopy + 81);
  if ((v6 & 0x1000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_149;
  }

LABEL_148:
  self->_releaseDate = *(fromCopy + 13);
  *&self->_has |= 0x1000uLL;
  v6 = *(fromCopy + 81);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v6 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_149:
  self->_playCount = *(fromCopy + 116);
  *&self->_has |= 0x80000000uLL;
  if (*(fromCopy + 81))
  {
LABEL_22:
    self->_duration = *(fromCopy + 1);
    *&self->_has |= 1uLL;
  }

LABEL_23:
  if (*(fromCopy + 50))
  {
    [(_MRContentItemMetadataProtobuf *)self setLocalizedContentRating:?];
  }

  v7 = *(fromCopy + 81);
  if ((v7 & 0x4000000000000) != 0)
  {
    self->_isExplicitItem = *(fromCopy + 632);
    *&self->_has |= 0x4000000000000uLL;
    v7 = *(fromCopy + 81);
    if ((v7 & 0x800000000) == 0)
    {
LABEL_27:
      if ((v7 & 0x1000000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_153;
    }
  }

  else if ((v7 & 0x800000000) == 0)
  {
    goto LABEL_27;
  }

  self->_playlistType = *(fromCopy + 120);
  *&self->_has |= 0x800000000uLL;
  v7 = *(fromCopy + 81);
  if ((v7 & 0x1000000000) == 0)
  {
LABEL_28:
    if ((v7 & 0x40000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_154;
  }

LABEL_153:
  self->_radioStationType = *(fromCopy + 132);
  *&self->_has |= 0x1000000000uLL;
  v7 = *(fromCopy + 81);
  if ((v7 & 0x40000000000) == 0)
  {
LABEL_29:
    if ((v7 & 0x200000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_155;
  }

LABEL_154:
  self->_artworkAvailable = *(fromCopy + 624);
  *&self->_has |= 0x40000000000uLL;
  v7 = *(fromCopy + 81);
  if ((v7 & 0x200000000000) == 0)
  {
LABEL_30:
    if ((v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_156;
  }

LABEL_155:
  self->_infoAvailable = *(fromCopy + 627);
  *&self->_has |= 0x200000000000uLL;
  v7 = *(fromCopy + 81);
  if ((v7 & 0x1000000000000000) == 0)
  {
LABEL_31:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_157;
  }

LABEL_156:
  self->_languageOptionsAvailable = *(fromCopy + 642);
  *&self->_has |= 0x1000000000000000uLL;
  v7 = *(fromCopy + 81);
  if ((v7 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v7 & 0x2000000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_158;
  }

LABEL_157:
  self->_numberOfSections = *(fromCopy + 110);
  *&self->_has |= 0x40000000uLL;
  v7 = *(fromCopy + 81);
  if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_33:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_159;
  }

LABEL_158:
  self->_lyricsAvailable = *(fromCopy + 643);
  *&self->_has |= 0x2000000000000000uLL;
  v7 = *(fromCopy + 81);
  if ((v7 & 0x1000000) == 0)
  {
LABEL_34:
    if ((v7 & 0x800000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_160;
  }

LABEL_159:
  self->_editingStyleFlags = *(fromCopy + 92);
  *&self->_has |= 0x1000000uLL;
  v7 = *(fromCopy + 81);
  if ((v7 & 0x800000000000000) == 0)
  {
LABEL_35:
    if ((v7 & 0x2000000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_160:
  self->_isStreamingContent = *(fromCopy + 641);
  *&self->_has |= 0x800000000000000uLL;
  if ((*(fromCopy + 81) & 0x2000000000000) != 0)
  {
LABEL_36:
    self->_isCurrentlyPlaying = *(fromCopy + 631);
    *&self->_has |= 0x2000000000000uLL;
  }

LABEL_37:
  if (*(fromCopy + 35))
  {
    [(_MRContentItemMetadataProtobuf *)self setCollectionIdentifier:?];
  }

  if (*(fromCopy + 62))
  {
    [(_MRContentItemMetadataProtobuf *)self setProfileIdentifier:?];
  }

  if ((*(fromCopy + 649) & 0x40) != 0)
  {
    self->_startTime = *(fromCopy + 15);
    *&self->_has |= 0x4000uLL;
  }

  if (*(fromCopy + 27))
  {
    [(_MRContentItemMetadataProtobuf *)self setArtworkMIMEType:?];
  }

  if (*(fromCopy + 30))
  {
    [(_MRContentItemMetadataProtobuf *)self setAssetURLString:?];
  }

  if (*(fromCopy + 37))
  {
    [(_MRContentItemMetadataProtobuf *)self setComposer:?];
  }

  v8 = *(fromCopy + 81);
  if ((v8 & 0x200000) != 0)
  {
    self->_discNumber = *(fromCopy + 86);
    *&self->_has |= 0x200000uLL;
    v8 = *(fromCopy + 81);
  }

  if ((v8 & 2) != 0)
  {
    self->_elapsedTime = *(fromCopy + 2);
    *&self->_has |= 2uLL;
  }

  if (*(fromCopy + 48))
  {
    [(_MRContentItemMetadataProtobuf *)self setGenre:?];
  }

  v9 = *(fromCopy + 81);
  if ((v9 & 0x800000000000) != 0)
  {
    self->_isAlwaysLive = *(fromCopy + 629);
    *&self->_has |= 0x800000000000uLL;
    v9 = *(fromCopy + 81);
    if ((v9 & 0x200000000) == 0)
    {
LABEL_57:
      if ((v9 & 0x80000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_164;
    }
  }

  else if ((v9 & 0x200000000) == 0)
  {
    goto LABEL_57;
  }

  self->_playbackRate = *(fromCopy + 118);
  *&self->_has |= 0x200000000uLL;
  v9 = *(fromCopy + 81);
  if ((v9 & 0x80000) == 0)
  {
LABEL_58:
    if ((v9 & 0x8000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_165;
  }

LABEL_164:
  self->_chapterCount = *(fromCopy + 66);
  *&self->_has |= 0x80000uLL;
  v9 = *(fromCopy + 81);
  if ((v9 & 0x8000000000) == 0)
  {
LABEL_59:
    if ((v9 & 0x10000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_166;
  }

LABEL_165:
  self->_totalDiscCount = *(fromCopy + 146);
  *&self->_has |= 0x8000000000uLL;
  v9 = *(fromCopy + 81);
  if ((v9 & 0x10000000000) == 0)
  {
LABEL_60:
    if ((v9 & 0x20000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_166:
  self->_totalTrackCount = *(fromCopy + 147);
  *&self->_has |= 0x10000000000uLL;
  if ((*(fromCopy + 81) & 0x20000000000) != 0)
  {
LABEL_61:
    self->_trackNumber = *(fromCopy + 150);
    *&self->_has |= 0x20000000000uLL;
  }

LABEL_62:
  if (*(fromCopy + 38))
  {
    [(_MRContentItemMetadataProtobuf *)self setContentIdentifier:?];
  }

  v10 = *(fromCopy + 81);
  if ((v10 & 0x200000000000000) != 0)
  {
    self->_isSharable = *(fromCopy + 639);
    *&self->_has |= 0x200000000000000uLL;
    v10 = *(fromCopy + 81);
    if ((v10 & 0x20000000000000) == 0)
    {
LABEL_66:
      if ((v10 & 0x10000000000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_170;
    }
  }

  else if ((v10 & 0x20000000000000) == 0)
  {
    goto LABEL_66;
  }

  self->_isLiked = *(fromCopy + 635);
  *&self->_has |= 0x20000000000000uLL;
  v10 = *(fromCopy + 81);
  if ((v10 & 0x10000000000000) == 0)
  {
LABEL_67:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_170:
  self->_isInWishList = *(fromCopy + 634);
  *&self->_has |= 0x10000000000000uLL;
  if ((*(fromCopy + 81) & 0x800) != 0)
  {
LABEL_68:
    self->_radioStationIdentifier = *(fromCopy + 12);
    *&self->_has |= 0x800uLL;
  }

LABEL_69:
  if (*(fromCopy + 64))
  {
    [(_MRContentItemMetadataProtobuf *)self setRadioStationName:?];
  }

  if (*(fromCopy + 65))
  {
    [(_MRContentItemMetadataProtobuf *)self setRadioStationString:?];
  }

  v11 = *(fromCopy + 81);
  if ((v11 & 0x40) != 0)
  {
    self->_iTunesStoreIdentifier = *(fromCopy + 7);
    *&self->_has |= 0x40uLL;
    v11 = *(fromCopy + 81);
    if ((v11 & 0x80) == 0)
    {
LABEL_75:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_174;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_75;
  }

  self->_iTunesStoreSubscriptionIdentifier = *(fromCopy + 8);
  *&self->_has |= 0x80uLL;
  v11 = *(fromCopy + 81);
  if ((v11 & 0x20) == 0)
  {
LABEL_76:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_174:
  self->_iTunesStoreArtistIdentifier = *(fromCopy + 6);
  *&self->_has |= 0x20uLL;
  if ((*(fromCopy + 81) & 0x10) != 0)
  {
LABEL_77:
    self->_iTunesStoreAlbumIdentifier = *(fromCopy + 5);
    *&self->_has |= 0x10uLL;
  }

LABEL_78:
  if (*(fromCopy + 63))
  {
    [(_MRContentItemMetadataProtobuf *)self setPurchaseInfoData:?];
  }

  v12 = *(fromCopy + 81);
  if ((v12 & 0x100000) != 0)
  {
    self->_defaultPlaybackRate = *(fromCopy + 80);
    *&self->_has |= 0x100000uLL;
    v12 = *(fromCopy + 81);
    if ((v12 & 0x800000) == 0)
    {
LABEL_82:
      if ((v12 & 0x400000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  else if ((v12 & 0x800000) == 0)
  {
    goto LABEL_82;
  }

  self->_downloadState = *(fromCopy + 88);
  *&self->_has |= 0x800000uLL;
  if ((*(fromCopy + 81) & 0x400000) != 0)
  {
LABEL_83:
    self->_downloadProgress = *(fromCopy + 87);
    *&self->_has |= 0x400000uLL;
  }

LABEL_84:
  if (*(fromCopy + 23))
  {
    [(_MRContentItemMetadataProtobuf *)self setAppMetricsData:?];
  }

  if (*(fromCopy + 67))
  {
    [(_MRContentItemMetadataProtobuf *)self setSeriesName:?];
  }

  v13 = *(fromCopy + 81);
  if ((v13 & 0x20000000) != 0)
  {
    self->_mediaType = *(fromCopy + 107);
    *&self->_has |= 0x20000000uLL;
    v13 = *(fromCopy + 81);
  }

  if ((v13 & 0x10000000) != 0)
  {
    self->_mediaSubType = *(fromCopy + 106);
    *&self->_has |= 0x10000000uLL;
  }

  if (*(fromCopy + 54))
  {
    [(_MRContentItemMetadataProtobuf *)self setNowPlayingInfoData:?];
  }

  if (*(fromCopy + 77))
  {
    [(_MRContentItemMetadataProtobuf *)self setUserInfoData:?];
  }

  if ((*(fromCopy + 655) & 4) != 0)
  {
    self->_isSteerable = *(fromCopy + 640);
    *&self->_has |= 0x400000000000000uLL;
  }

  if (*(fromCopy + 28))
  {
    [(_MRContentItemMetadataProtobuf *)self setArtworkURL:?];
  }

  if (*(fromCopy + 52))
  {
    [(_MRContentItemMetadataProtobuf *)self setLyricsURL:?];
  }

  if (*(fromCopy + 41))
  {
    [(_MRContentItemMetadataProtobuf *)self setDeviceSpecificUserInfoData:?];
  }

  if (*(fromCopy + 36))
  {
    [(_MRContentItemMetadataProtobuf *)self setCollectionInfoData:?];
  }

  v14 = *(fromCopy + 81);
  if ((v14 & 4) != 0)
  {
    self->_elapsedTimeTimestamp = *(fromCopy + 3);
    *&self->_has |= 4uLL;
    v14 = *(fromCopy + 81);
  }

  if ((v14 & 0x100) != 0)
  {
    self->_inferredTimestamp = *(fromCopy + 9);
    *&self->_has |= 0x100uLL;
  }

  if (*(fromCopy + 68))
  {
    [(_MRContentItemMetadataProtobuf *)self setServiceIdentifier:?];
  }

  v15 = *(fromCopy + 81);
  if ((v15 & 0x40000) != 0)
  {
    self->_artworkDataWidthDeprecated = *(fromCopy + 49);
    *&self->_has |= 0x40000uLL;
    v15 = *(fromCopy + 81);
  }

  if ((v15 & 0x20000) != 0)
  {
    self->_artworkDataHeightDeprecated = *(fromCopy + 48);
    *&self->_has |= 0x20000uLL;
  }

  if (*(fromCopy + 39))
  {
    [(_MRContentItemMetadataProtobuf *)self setCurrentPlaybackDateData:?];
  }

  if (*(fromCopy + 26))
  {
    [(_MRContentItemMetadataProtobuf *)self setArtworkIdentifier:?];
  }

  if ((*(fromCopy + 654) & 0x40) != 0)
  {
    self->_isLoading = *(fromCopy + 636);
    *&self->_has |= 0x40000000000000uLL;
  }

  if (*(fromCopy + 29))
  {
    [(_MRContentItemMetadataProtobuf *)self setArtworkURLTemplatesData:?];
  }

  v16 = *(fromCopy + 81);
  if ((v16 & 0x200) != 0)
  {
    self->_legacyUniqueIdentifier = *(fromCopy + 10);
    *&self->_has |= 0x200uLL;
    v16 = *(fromCopy + 81);
  }

  if ((v16 & 0x4000000) != 0)
  {
    self->_episodeType = *(fromCopy + 94);
    *&self->_has |= 0x4000000uLL;
  }

  if (*(fromCopy + 25))
  {
    [(_MRContentItemMetadataProtobuf *)self setArtworkFileURL:?];
  }

  if (*(fromCopy + 32))
  {
    [(_MRContentItemMetadataProtobuf *)self setBrandIdentifier:?];
  }

  if (*(fromCopy + 51))
  {
    [(_MRContentItemMetadataProtobuf *)self setLocalizedDurationString:?];
  }

  if (*(fromCopy + 21))
  {
    [(_MRContentItemMetadataProtobuf *)self setAlbumYear:?];
  }

  v17 = *(fromCopy + 81);
  if ((v17 & 0x4000000000) != 0)
  {
    self->_songTraits = *(fromCopy + 138);
    *&self->_has |= 0x4000000000uLL;
    v17 = *(fromCopy + 81);
    if ((v17 & 0x10000) == 0)
    {
LABEL_138:
      if ((v17 & 0x400000000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_139;
    }
  }

  else if ((v17 & 0x10000) == 0)
  {
    goto LABEL_138;
  }

  self->_albumTraits = *(fromCopy + 40);
  *&self->_has |= 0x10000uLL;
  if ((*(fromCopy + 81) & 0x400000000) != 0)
  {
LABEL_139:
    self->_playlistTraits = *(fromCopy + 119);
    *&self->_has |= 0x400000000uLL;
  }

LABEL_140:
  preferredFormat = self->_preferredFormat;
  v19 = *(fromCopy + 61);
  if (preferredFormat)
  {
    if (v19)
    {
      [(_MRAudioFormatProtobuf *)preferredFormat mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(_MRContentItemMetadataProtobuf *)self setPreferredFormat:?];
  }

  activeFormat = self->_activeFormat;
  v21 = *(fromCopy + 16);
  if (activeFormat)
  {
    if (v21)
    {
      [(_MRAudioFormatProtobuf *)activeFormat mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(_MRContentItemMetadataProtobuf *)self setActiveFormat:?];
  }

  v22 = *(fromCopy + 81);
  if ((v22 & 0x8000) != 0)
  {
    self->_activeFormatJustification = *(fromCopy + 34);
    *&self->_has |= 0x8000uLL;
    v22 = *(fromCopy + 81);
  }

  if ((v22 & 0x8000000) != 0)
  {
    self->_formatTierPreference = *(fromCopy + 95);
    *&self->_has |= 0x8000000uLL;
  }

  audioRoute = self->_audioRoute;
  v24 = *(fromCopy + 31);
  if (audioRoute)
  {
    if (v24)
    {
      [(_MRAudioRouteProtobuf *)audioRoute mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(_MRContentItemMetadataProtobuf *)self setAudioRoute:?];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = *(fromCopy + 22);
  v26 = [v25 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v35;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(_MRContentItemMetadataProtobuf *)self addAlternativeFormats:*(*(&v34 + 1) + 8 * i), v34];
      }

      v27 = [v25 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v27);
  }

  v30 = *(fromCopy + 81);
  if ((v30 & 0x400000000000) != 0)
  {
    self->_isAdvertisement = *(fromCopy + 628);
    *&self->_has |= 0x400000000000uLL;
    v30 = *(fromCopy + 81);
  }

  if ((v30 & 0x100000000000) != 0)
  {
    self->_hasAlternativeFormats = *(fromCopy + 626);
    *&self->_has |= 0x100000000000uLL;
  }

  if (*(fromCopy + 57))
  {
    [(_MRContentItemMetadataProtobuf *)self setParticipantName:?];
  }

  if (*(fromCopy + 56))
  {
    [(_MRContentItemMetadataProtobuf *)self setParticipantIdentifier:?];
  }

  if (*(fromCopy + 34))
  {
    [(_MRContentItemMetadataProtobuf *)self setClassicalWork:?];
  }

  v31 = *(fromCopy + 81);
  if ((v31 & 0x2000) != 0)
  {
    self->_reportingAdamID = *(fromCopy + 14);
    *&self->_has |= 0x2000uLL;
    v31 = *(fromCopy + 81);
    if ((v31 & 0x400) == 0)
    {
LABEL_217:
      if ((v31 & 8) == 0)
      {
        goto LABEL_219;
      }

      goto LABEL_218;
    }
  }

  else if ((v31 & 0x400) == 0)
  {
    goto LABEL_217;
  }

  self->_lyricsAdamID = *(fromCopy + 11);
  *&self->_has |= 0x400uLL;
  if ((*(fromCopy + 81) & 8) != 0)
  {
LABEL_218:
    self->_iTunesStoreAlbumArtistIdentifier = *(fromCopy + 4);
    *&self->_has |= 8uLL;
  }

LABEL_219:
  if (*(fromCopy + 45))
  {
    [(_MRContentItemMetadataProtobuf *)self setDurationStringLocalizationKey:?];
  }

  if (*(fromCopy + 655))
  {
    self->_isResolvableParticipant = *(fromCopy + 638);
    *&self->_has |= 0x100000000000000uLL;
  }

  if (*(fromCopy + 49))
  {
    [(_MRContentItemMetadataProtobuf *)self setInternationalStandardRecordingCode:?];
  }

  v32 = *(fromCopy + 81);
  if ((v32 & 0x8000000000000) != 0)
  {
    self->_isInTransition = *(fromCopy + 633);
    *&self->_has |= 0x8000000000000uLL;
    v32 = *(fromCopy + 81);
    if ((v32 & 0x80000000000) == 0)
    {
LABEL_227:
      if ((v32 & 0x4000000000000000) == 0)
      {
        goto LABEL_229;
      }

      goto LABEL_228;
    }
  }

  else if ((v32 & 0x80000000000) == 0)
  {
    goto LABEL_227;
  }

  self->_excludeFromSuggestions = *(fromCopy + 625);
  *&self->_has |= 0x80000000000uLL;
  if ((*(fromCopy + 81) & 0x4000000000000000) != 0)
  {
LABEL_228:
    self->_transcriptAlignmentsAvailable = *(fromCopy + 644);
    *&self->_has |= 0x4000000000000000uLL;
  }

LABEL_229:
  if (*(fromCopy + 71))
  {
    [(_MRContentItemMetadataProtobuf *)self setSubtitleShort:?];
  }

  if (*(fromCopy + 76))
  {
    [(_MRContentItemMetadataProtobuf *)self setTransitionInfoData:?];
  }

  v33 = *MEMORY[0x1E69E9840];
}

@end
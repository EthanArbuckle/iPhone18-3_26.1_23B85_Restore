@interface IMAssistantINMessageConverter
+ (id)INMessageForOutgoingIMMessage:(id)message toChat:(id)chat messageType:(int64_t)type personProvider:(id)provider;
+ (id)INMessagesForSPIMessage:(id)message personProvider:(id)provider;
+ (id)INPersonsForSPIHandles:(id)handles personProvider:(id)provider;
+ (id)INStickerForIMSPIAttachment:(id)attachment;
+ (id)__INMessageLinkMetadataForLPLinkMetadata:(id)metadata;
+ (id)__INSpeakableStringForChat:(id)chat;
+ (id)__INSpeakableStringForMessage:(id)message;
+ (id)_stringByRemovingMessagesControlCharactersFromString:(id)string;
+ (id)expressiveSendIdFromMessageEffectType:(int64_t)type;
+ (id)inlineGlyphContentFromAttributedMessageBody:(id)body attachmentProvider:(id)provider;
+ (id)makeINMessage:(int64_t)message message:(id)a4 numberOfAttachments:(int64_t)attachments personProvider:(id)provider referencedINMessage:(id)nMessage content:(id)content reaction:(id)reaction inlineGlyphContent:(id)self0 translatedMessagePart:(id)self1;
+ (id)messageEffectTypeToExpressiveSendIdDictionary;
+ (id)prepareAttachments:(int64_t)attachments message:(id)message;
+ (int64_t)INMessageReactionTypeForIMSPIMessageType:(int64_t)type;
+ (int64_t)messageEffectTypeFromExpressiveSendId:(id)id;
@end

@implementation IMAssistantINMessageConverter

+ (id)messageEffectTypeToExpressiveSendIdDictionary
{
  if (qword_27F610F90 != -1)
  {
    sub_2547C858C();
  }

  v3 = qword_27F610F88;

  return v3;
}

+ (int64_t)messageEffectTypeFromExpressiveSendId:(id)id
{
  v13 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (![idCopy length])
  {
LABEL_7:
    integerValue = 0;
    goto LABEL_8;
  }

  v4 = +[IMAssistantINMessageConverter messageEffectTypeToExpressiveSendIdDictionary];
  v5 = [v4 objectForKeyedSubscript:idCopy];
  if (!v5)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = idCopy;
      _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "No effect for effect identifier: %@", &v11, 0xCu);
    }

    goto LABEL_7;
  }

  v6 = v5;
  integerValue = [v5 integerValue];

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return integerValue;
}

+ (id)expressiveSendIdFromMessageEffectType:(int64_t)type
{
  if (type)
  {
    v4 = +[IMAssistantINMessageConverter messageEffectTypeToExpressiveSendIdDictionary];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v6 = [v4 allKeysForObject:v5];

    if ([v6 count])
    {
      firstObject = [v6 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)__INMessageLinkMetadataForLPLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  images = [metadataCopy images];
  v79 = [images __imArrayByApplyingBlock:&unk_286693178];

  icons = [metadataCopy icons];
  v78 = [icons __imArrayByApplyingBlock:&unk_286693198];

  v41 = metadataCopy;
  specialization = [metadataCopy specialization];
  MEMORY[0x259C191F0](@"LPiTunesMediaSongMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaAlbumMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaMusicVideoMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaArtistMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaPlaylistMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaRadioMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaSoftwareMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaBookMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaAudioBookMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaPodcastEpisodeMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaPodcastMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaTVEpisodeMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaTVSeasonMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaMovieMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPiTunesMediaMovieBundleMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPAppleTVMetadata", @"LinkPresentation");
  MEMORY[0x259C191F0](@"LPAppleMusicTVShowMetadata", @"LinkPresentation");
  v37 = specialization;
  if (objc_opt_isKindOfClass())
  {
    v7 = specialization;
    storeFrontIdentifier = [v7 storeFrontIdentifier];
    storeIdentifier = [v7 storeIdentifier];
    name = [v7 name];
    artist = [v7 artist];
    album = [v7 album];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    podcastName = 0;
    artist4 = 0;
    artist5 = 0;
    episodeName = 0;
    narrator = 0;
    name10 = 0;
    name9 = 0;
    author2 = 0;
    author = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    artist3 = 0;
    name4 = 0;
    artist2 = 0;
    name3 = 0;
    name2 = 0;
    v11 = 1;
LABEL_29:
    v38 = v11;
    goto LABEL_30;
  }

  if (objc_opt_isKindOfClass())
  {
    v12 = specialization;
    storeFrontIdentifier = [v12 storeFrontIdentifier];
    storeIdentifier = [v12 storeIdentifier];
    name2 = [v12 name];
    artist2 = [v12 artist];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    podcastName = 0;
    artist4 = 0;
    artist5 = 0;
    episodeName = 0;
    narrator = 0;
    name10 = 0;
    name9 = 0;
    author2 = 0;
    author = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    artist3 = 0;
    name4 = 0;
    name3 = 0;
    artist = 0;
    album = 0;
    name = 0;
    v11 = 2;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v13 = specialization;
    storeFrontIdentifier = [v13 storeFrontIdentifier];
    storeIdentifier = [v13 storeIdentifier];
    name3 = [v13 name];
    artist3 = [v13 artist];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    podcastName = 0;
    artist4 = 0;
    artist5 = 0;
    episodeName = 0;
    narrator = 0;
    name10 = 0;
    name9 = 0;
    author2 = 0;
    author = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    name4 = 0;
    name2 = 0;
    artist2 = 0;
    artist = 0;
    album = 0;
    name = 0;
    v11 = 3;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v14 = specialization;
    storeFrontIdentifier = [v14 storeFrontIdentifier];
    storeIdentifier = [v14 storeIdentifier];
    name4 = [v14 name];
    genre = [v14 genre];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    podcastName = 0;
    artist4 = 0;
    artist5 = 0;
    episodeName = 0;
    narrator = 0;
    name10 = 0;
    name9 = 0;
    author2 = 0;
    author = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    name5 = 0;
    name3 = 0;
    artist3 = 0;
    name2 = 0;
    artist2 = 0;
    artist = 0;
    album = 0;
    name = 0;
    v11 = 4;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v15 = specialization;
    storeFrontIdentifier = [v15 storeFrontIdentifier];
    storeIdentifier = [v15 storeIdentifier];
    name5 = [v15 name];
    curator = [v15 curator];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    podcastName = 0;
    artist4 = 0;
    artist5 = 0;
    episodeName = 0;
    narrator = 0;
    name10 = 0;
    name9 = 0;
    author2 = 0;
    author = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    name6 = 0;
    name4 = 0;
    genre = 0;
    name3 = 0;
    artist3 = 0;
    name2 = 0;
    artist2 = 0;
    artist = 0;
    album = 0;
    name = 0;
    v11 = 5;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v16 = specialization;
    storeFrontIdentifier = [v16 storeFrontIdentifier];
    storeIdentifier = [v16 storeIdentifier];
    name6 = [v16 name];
    curator2 = [v16 curator];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    podcastName = 0;
    artist4 = 0;
    artist5 = 0;
    episodeName = 0;
    narrator = 0;
    name10 = 0;
    name9 = 0;
    author2 = 0;
    author = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    name5 = 0;
    curator = 0;
    name4 = 0;
    genre = 0;
    name3 = 0;
    artist3 = 0;
    name2 = 0;
    artist2 = 0;
    artist = 0;
    album = 0;
    name = 0;
    v11 = 6;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v17 = specialization;
    storeFrontIdentifier = [v17 storeFrontIdentifier];
    storeIdentifier = [v17 storeIdentifier];
    name7 = [v17 name];
    genre2 = [v17 genre];
    platform = [v17 platform];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    podcastName = 0;
    artist4 = 0;
    artist5 = 0;
    episodeName = 0;
    narrator = 0;
    name10 = 0;
    name9 = 0;
    author2 = 0;
    author = 0;
    name8 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    artist3 = 0;
    name4 = 0;
    artist2 = 0;
    name3 = 0;
    album = 0;
    name2 = 0;
    name = 0;
    artist = 0;
    v11 = 7;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v18 = specialization;
    storeFrontIdentifier = [v18 storeFrontIdentifier];
    storeIdentifier = [v18 storeIdentifier];
    name8 = [v18 name];
    author = [v18 author];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    podcastName = 0;
    artist4 = 0;
    artist5 = 0;
    episodeName = 0;
    narrator = 0;
    name10 = 0;
    name9 = 0;
    author2 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    artist3 = 0;
    name4 = 0;
    artist2 = 0;
    name3 = 0;
    album = 0;
    name2 = 0;
    name = 0;
    artist = 0;
    v11 = 8;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v19 = specialization;
    storeFrontIdentifier = [v19 storeFrontIdentifier];
    storeIdentifier = [v19 storeIdentifier];
    name9 = [v19 name];
    author2 = [v19 author];
    narrator = [v19 narrator];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    podcastName = 0;
    artist4 = 0;
    artist5 = 0;
    episodeName = 0;
    name10 = 0;
    author = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    artist3 = 0;
    name4 = 0;
    artist2 = 0;
    name3 = 0;
    album = 0;
    name2 = 0;
    name = 0;
    artist = 0;
    v11 = 9;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v20 = specialization;
    storeFrontIdentifier = [v20 storeFrontIdentifier];
    storeIdentifier = [v20 storeIdentifier];
    episodeName = [v20 episodeName];
    podcastName = [v20 podcastName];
    artist4 = [v20 artist];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    name10 = 0;
    artist5 = 0;
    author2 = 0;
    narrator = 0;
    author = 0;
    name9 = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    artist3 = 0;
    name4 = 0;
    artist2 = 0;
    name3 = 0;
    album = 0;
    name2 = 0;
    name = 0;
    artist = 0;
    v11 = 11;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v21 = specialization;
    storeFrontIdentifier = [v21 storeFrontIdentifier];
    storeIdentifier = [v21 storeIdentifier];
    name10 = [v21 name];
    artist5 = [v21 artist];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    podcastName = 0;
    artist4 = 0;
    episodeName = 0;
    author2 = 0;
    narrator = 0;
    author = 0;
    name9 = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    artist3 = 0;
    name4 = 0;
    artist2 = 0;
    name3 = 0;
    album = 0;
    name2 = 0;
    name = 0;
    artist = 0;
    v11 = 10;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v22 = specialization;
    storeFrontIdentifier = [v22 storeFrontIdentifier];
    storeIdentifier = [v22 storeIdentifier];
    episodeName2 = [v22 episodeName];
    seasonName = [v22 seasonName];
    genre3 = [v22 genre];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    genre4 = 0;
    name12 = 0;
    name11 = 0;
    podcastName = 0;
    artist4 = 0;
    artist5 = 0;
    episodeName = 0;
    narrator = 0;
    name10 = 0;
    name9 = 0;
    author2 = 0;
    author = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    artist3 = 0;
    name4 = 0;
    artist2 = 0;
    name3 = 0;
    album = 0;
    name2 = 0;
    name = 0;
    artist = 0;
    v11 = 12;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v23 = specialization;
    storeFrontIdentifier = [v23 storeFrontIdentifier];
    storeIdentifier = [v23 storeIdentifier];
    name11 = [v23 name];
    genre4 = [v23 genre];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    name12 = 0;
    seasonName = 0;
    genre3 = 0;
    artist4 = 0;
    episodeName2 = 0;
    episodeName = 0;
    podcastName = 0;
    name10 = 0;
    artist5 = 0;
    author2 = 0;
    narrator = 0;
    author = 0;
    name9 = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    artist3 = 0;
    name4 = 0;
    artist2 = 0;
    name3 = 0;
    album = 0;
    name2 = 0;
    name = 0;
    artist = 0;
    v11 = 13;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v24 = specialization;
    storeFrontIdentifier = [v24 storeFrontIdentifier];
    storeIdentifier = [v24 storeIdentifier];
    name12 = [v24 name];
    genre5 = [v24 genre];

    name13 = 0;
    name14 = 0;
    v8 = 0;
    title = 0;
    subtitle = 0;
    name11 = 0;
    genre4 = 0;
    seasonName = 0;
    genre3 = 0;
    artist4 = 0;
    episodeName2 = 0;
    episodeName = 0;
    podcastName = 0;
    name10 = 0;
    artist5 = 0;
    author2 = 0;
    narrator = 0;
    author = 0;
    name9 = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    artist3 = 0;
    name4 = 0;
    artist2 = 0;
    name3 = 0;
    album = 0;
    name2 = 0;
    name = 0;
    artist = 0;
    v11 = 14;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    name13 = [specialization name];
    genre5 = 0;
    name14 = 0;
    v8 = 0;
LABEL_37:
    title = 0;
    subtitle = 0;
LABEL_38:
    genre4 = 0;
    name12 = 0;
    genre3 = 0;
    name11 = 0;
    episodeName2 = 0;
    seasonName = 0;
    podcastName = 0;
    artist4 = 0;
    artist5 = 0;
    episodeName = 0;
    narrator = 0;
    name10 = 0;
    name9 = 0;
    author2 = 0;
    author = 0;
    name8 = 0;
    platform = 0;
    genre2 = 0;
    name7 = 0;
    curator2 = 0;
    curator = 0;
    name6 = 0;
    genre = 0;
    name5 = 0;
    artist3 = 0;
    name4 = 0;
    artist2 = 0;
    name3 = 0;
    album = 0;
    name2 = 0;
    name = 0;
    artist = 0;
    storeFrontIdentifier = 0;
    storeIdentifier = 0;
    v38 = 0;
    goto LABEL_30;
  }

  if (objc_opt_isKindOfClass())
  {
    v32 = specialization;
    name14 = [v32 name];
    genre6 = [v32 genre];

    v8 = genre6;
    name13 = 0;
    genre5 = 0;
    goto LABEL_37;
  }

  if (objc_opt_isKindOfClass())
  {
    v34 = specialization;
    title = [v34 title];
    subtitle = [v34 subtitle];

    name13 = 0;
    genre5 = 0;
    name14 = 0;
    v8 = 0;
    goto LABEL_38;
  }

  name13 = 0;
  genre5 = 0;
  name14 = 0;
  title = 0;
  subtitle = 0;
  genre4 = 0;
  name12 = 0;
  genre3 = 0;
  name11 = 0;
  episodeName2 = 0;
  seasonName = 0;
  podcastName = 0;
  artist4 = 0;
  artist5 = 0;
  episodeName = 0;
  narrator = 0;
  name10 = 0;
  name9 = 0;
  author2 = 0;
  author = 0;
  name8 = 0;
  platform = 0;
  genre2 = 0;
  name7 = 0;
  curator2 = 0;
  curator = 0;
  name6 = 0;
  genre = 0;
  name5 = 0;
  artist3 = 0;
  name4 = 0;
  artist2 = 0;
  name3 = 0;
  album = 0;
  name2 = 0;
  name = 0;
  artist = 0;
  storeFrontIdentifier = 0;
  storeIdentifier = 0;
  v38 = 0;
  v8 = 0;
LABEL_30:
  v35 = objc_alloc(MEMORY[0x277CD3DF0]);
  siteName = [v41 siteName];
  summary = [v41 summary];
  title2 = [v41 title];
  itemType = [v41 itemType];
  originalURL = [v41 originalURL];
  absoluteString = [originalURL absoluteString];
  creator = [v41 creator];
  v39 = [v35 initWithSiteName:siteName summary:summary title:title2 itemType:itemType originalURL:absoluteString imageURLs:v79 iconURLs:v78 creator:creator linkMediaType:v38 iTunesStoreIdentifier:storeIdentifier iTunesStoreFrontIdentifier:storeFrontIdentifier songTitle:name songArtist:artist songAlbum:album albumName:name2 albumArtist:artist2 musicVideoName:name3 musicVideoArtist:artist3 artistName:name4 artistGenre:genre playlistName:name5 playlistCurator:curator radioName:name6 radioCurator:curator2 softwareName:name7 softwareGenre:genre2 softwarePlatform:platform bookName:name8 bookAuthor:author audioBookName:name9 audioBookAuthor:author2 audioBookNarrator:narrator podcastName:name10 podcastArtist:artist5 podcastEpisodeName:episodeName podcastEpisodePodcastName:podcastName podcastEpisodeArtist:artist4 podcastEpisodeReleaseDate:0 tvEpisodeEpisodeName:episodeName2 tvEpisodeSeasonName:seasonName tvEpisodeGenre:genre3 tvSeasonName:name11 tvSeasonGenre:genre4 movieName:name12 movieGenre:genre5 tvShowName:name13 movieBundleName:name14 movieBundleGenre:v8 appleTvTitle:title appleTvSubtitle:subtitle];

  return v39;
}

+ (id)__INSpeakableStringForMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy isGroupChat])
  {
    displayName = [messageCopy displayName];
    if ([displayName length])
    {
      v5 = objc_alloc(MEMORY[0x277CD4188]);
      chatIdentifier = [messageCopy chatIdentifier];
      displayName2 = [messageCopy displayName];
      v8 = [v5 initWithVocabularyIdentifier:chatIdentifier spokenPhrase:displayName2 pronunciationHint:0];
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Could not create INSpeakableString, chat did not have a display name", v11, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)__INSpeakableStringForChat:(id)chat
{
  chatCopy = chat;
  if ([chatCopy isGroupChat])
  {
    displayName = [chatCopy displayName];
    if ([displayName length])
    {
      v5 = objc_alloc(MEMORY[0x277CD4188]);
      chatIdentifier = [chatCopy chatIdentifier];
      v7 = [v5 initWithVocabularyIdentifier:chatIdentifier spokenPhrase:displayName pronunciationHint:0];
    }

    else
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Could not create INSpeakableString, chat did not have a display name", v10, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)INPersonsForSPIHandles:(id)handles personProvider:(id)provider
{
  providerCopy = provider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2547BD9F0;
  v9[3] = &unk_279786AE0;
  v10 = providerCopy;
  v6 = providerCopy;
  v7 = [handles __imArrayByApplyingBlock:v9];

  return v7;
}

+ (id)prepareAttachments:(int64_t)attachments message:(id)message
{
  v48 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  attachments = [messageCopy attachments];
  v6 = [attachments count];

  if (v6)
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = NSTemporaryDirectory();
    v9 = [v7 fileURLWithPath:v8];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = messageCopy;
    obj = [messageCopy attachments];
    v10 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v35 = *v38;
      do
      {
        v13 = 0;
        do
        {
          if (*v38 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v37 + 1) + 8 * v13);
          fileUrl = [v14 fileUrl];

          if (fileUrl)
          {
            fileUrl2 = [v14 fileUrl];
            lastPathComponent = [fileUrl2 lastPathComponent];

            v18 = [v9 URLByAppendingPathComponent:lastPathComponent];
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:0];

            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            fileUrl3 = [v14 fileUrl];
            v36 = v12;
            [defaultManager2 copyItemAtURL:fileUrl3 toURL:v18 error:&v36];
            v22 = v36;

            if (v22 && [v22 code] != 516)
            {
              v27 = IMLogHandleForCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v42 = v22;
                _os_log_impl(&dword_25479E000, v27, OS_LOG_TYPE_INFO, "Failed to copy attachment file to temp directory error %@", buf, 0xCu);
              }
            }

            else
            {
              v23 = IMLogHandleForCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                fileUrl4 = [v14 fileUrl];
                code = [v22 code];
                *buf = 138412802;
                v42 = fileUrl4;
                v43 = 2112;
                v44 = v18;
                v45 = 2048;
                v46 = code;
                _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "File URL: %@ temp URL: %@, overwrite = %ld", buf, 0x20u);
              }

              v26 = MEMORY[0x277CD3C08];
              v27 = [v14 uti];
              v28 = [v26 fileWithFileURL:v18 filename:lastPathComponent typeIdentifier:v27];
              [v33 addObject:v28];
            }

            v12 = v22;
          }

          else
          {
            lastPathComponent = IMLogHandleForCategory();
            if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, lastPathComponent, OS_LOG_TYPE_INFO, "Error: Attachment fileURL is nil. Skipping copy", buf, 2u);
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v29 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
        v11 = v29;
      }

      while (v29);
    }

    else
    {
      v12 = 0;
    }

    messageCopy = v32;
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Error: Message does not have attachments!", buf, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (int64_t)INMessageReactionTypeForIMSPIMessageType:(int64_t)type
{
  result = 1;
  if (type <= 112)
  {
    if (type > 105)
    {
      if (type > 108)
      {
        switch(type)
        {
          case 'm':
            v7 = MEMORY[0x277CD4528];
            break;
          case 'n':
            v7 = MEMORY[0x277CD4510];
            break;
          case 'p':
            v7 = MEMORY[0x277CD4530];
            break;
          default:
            return result;
        }
      }

      else if (type == 106)
      {
        v7 = MEMORY[0x277CD44F8];
      }

      else if (type == 107)
      {
        v7 = MEMORY[0x277CD4500];
      }

      else
      {
        v7 = MEMORY[0x277CD4520];
      }

      return *v7;
    }

    if ((type - 100) >= 5)
    {
      if (type != 105)
      {
        return result;
      }

      v7 = MEMORY[0x277CD4518];
      return *v7;
    }
  }

  else if ((type - 200) >= 0x18)
  {
    if (type != 113)
    {
      if (type == 114)
      {
        return 1009;
      }

      return result;
    }

    v7 = MEMORY[0x277CD44F0];
    return *v7;
  }

  v9 = v3;
  v10 = v4;
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_25479E000, v6, OS_LOG_TYPE_INFO, "Error: This should only be called on a set of INMessageReaction subtypes. Returning INMessageReactionTypeGeneric.", v8, 2u);
  }

  return 2;
}

+ (id)makeINMessage:(int64_t)message message:(id)a4 numberOfAttachments:(int64_t)attachments personProvider:(id)provider referencedINMessage:(id)nMessage content:(id)content reaction:(id)reaction inlineGlyphContent:(id)self0 translatedMessagePart:(id)self1
{
  v85 = *MEMORY[0x277D85DE8];
  v15 = a4;
  providerCopy = provider;
  nMessageCopy = nMessage;
  contentCopy = content;
  reactionCopy = reaction;
  glyphContentCopy = glyphContent;
  partCopy = part;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(nMessage) = [mEMORY[0x277D1A9B8] isZelkovaEnabled];

  if (nMessage && [v15 messageType] == 215)
  {
    extensionPayloadURL = [v15 extensionPayloadURL];
    absoluteString = [extensionPayloadURL absoluteString];

    contentCopy = absoluteString;
  }

  if (partCopy)
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "IMAssistantINMessageConverter: Translated message, using translated text for content", buf, 2u);
    }

    translatedText = [partCopy translatedText];
    string = [translatedText string];
    v25 = [self _stringByRemovingMessagesControlCharactersFromString:string];

    translationLanguage = [partCopy translationLanguage];
    v73 = [translationLanguage stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    contentCopy = v25;
  }

  else
  {
    v73 = 0;
  }

  selfCopy = self;
  v75 = partCopy;
  v76 = providerCopy;
  v77 = contentCopy;
  selfCopy2 = self;
  v70 = v15;
  if (message == 15 && ([v15 attachments], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v29 == 1))
  {
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "IMAssistantINMessageConverter: Image type attachments", buf, 2u);
    }

    v31 = [self prepareAttachments:15 message:v15];
    v32 = objc_alloc(MEMORY[0x277CD3DE0]);
    guid = [v15 guid];
    chatIdentifier = [v15 chatIdentifier];
    date = [v15 date];
    sender = [v15 sender];
    v36 = [providerCopy personFromSPIHandle:?];
    recipients = [v15 recipients];
    v37 = chatIdentifier;
    v38 = [self INPersonsForSPIHandles:? personProvider:?];
    dateForLastReadMessageInChat = [IMAssistantINMessageConverter __INSpeakableStringForMessage:v15];
    service = [v15 service];
    v41 = [v32 initWithIdentifier:guid conversationIdentifier:chatIdentifier content:v77 dateSent:date sender:v36 recipients:v38 groupName:dateForLastReadMessageInChat messageType:15 serviceName:service attachmentFiles:v31];
  }

  else
  {
    v69 = objc_alloc(MEMORY[0x277CD3DE0]);
    guid2 = [v15 guid];
    chatIdentifier2 = [v15 chatIdentifier];
    date2 = [v15 date];
    sender2 = [v15 sender];
    v42 = [providerCopy personFromSPIHandle:sender2];
    [v15 recipients];
    v64 = v43 = contentCopy;
    [selfCopy INPersonsForSPIHandles:v64 personProvider:providerCopy];
    v45 = v44 = v15;
    v46 = [IMAssistantINMessageConverter __INSpeakableStringForMessage:v15];
    dateForLastReadMessageInChat = [v15 dateForLastReadMessageInChat];
    service = [MEMORY[0x277CCABB0] numberWithInteger:attachments];
    effect = [v44 effect];
    v48 = [IMAssistantINMessageConverter messageEffectTypeFromExpressiveSendId:effect];
    service2 = [v44 service];
    v50 = v43;
    v51 = service2;
    v63 = v48;
    v31 = guid2;
    guid = chatIdentifier2;
    messageCopy = message;
    v37 = date2;
    sender = v42;
    recipients = v45;
    v41 = [v69 initWithIdentifier:guid2 conversationIdentifier:chatIdentifier2 content:v50 dateSent:date2 sender:v42 recipients:v45 groupName:v46 dateMessageWasLastRead:dateForLastReadMessageInChat numberOfAttachments:service messageType:messageCopy messageEffectType:v63 referencedMessage:nMessageCopy serviceName:service2 attachmentFiles:0 location:0 linkMetadata:0 reaction:reactionCopy sticker:0 inlineGlyphContent:glyphContentCopy];

    v38 = v46;
    v36 = v64;

    date = sender2;
  }

  if (v73 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v41 setTranslatedToLanguage:v73];
  }

  richLinkMetadata = [v70 richLinkMetadata];
  if (richLinkMetadata)
  {
    v53 = [selfCopy2 __INMessageLinkMetadataForLPLinkMetadata:richLinkMetadata];
    [v41 setLinkMetadata:v53];
    v54 = IMLogHandleForCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v84 = v53;
      _os_log_impl(&dword_25479E000, v54, OS_LOG_TYPE_INFO, "Link Metadata: %@", buf, 0xCu);
    }
  }

  peerPaymentAmount = [v70 peerPaymentAmount];
  if (peerPaymentAmount)
  {
    v56 = objc_alloc(MEMORY[0x277CD3B50]);
    amount = [peerPaymentAmount amount];
    currency = [peerPaymentAmount currency];
    v59 = [v56 initWithAmount:amount currencyCode:currency];

    [v41 setPaymentAmount:v59];
  }

  v60 = *MEMORY[0x277D85DE8];

  return v41;
}

+ (id)INMessagesForSPIMessage:(id)message personProvider:(id)provider
{
  v80 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  providerCopy = provider;
  v8 = _IMAssistantCoreGeneralSignpostLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = _IMAssistantCoreGeneralSignpostLogHandle();
  v11 = v10;
  v59 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "INMessagesForSPIMessage", &unk_2547CAD0B, buf, 2u);
  }

  guid = [messageCopy guid];
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v77 = guid;
    _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Converting IMSPIMessage to INMessages. Message to be converted: %@", buf, 0xCu);
  }

  referencedMessage = [messageCopy referencedMessage];
  guid2 = [referencedMessage guid];
  v61 = guid2;
  if (referencedMessage)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yes, a reference to: %@", guid2];
  }

  else
  {
    v16 = @"No";
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v77 = guid;
    v78 = 2112;
    v79 = v16;
    _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "Message (guid: %@) has a referenced message? %@", buf, 0x16u);
  }

  spid = v9;
  selfCopy = self;
  if (!referencedMessage)
  {
    firstObject = 0;
    goto LABEL_22;
  }

  v18 = [self INMessagesForSPIMessage:referencedMessage personProvider:providerCopy];
  if ([v18 count] < 2)
  {
    v22 = [v18 count];
    v19 = IMLogHandleForCategory();
    v23 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (!v22)
    {
      if (v23)
      {
        *buf = 138412546;
        v77 = guid;
        v78 = 2112;
        v79 = v61;
        _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Message %@ has a reference to a message %@ that could not be converted to an INMessage.", buf, 0x16u);
      }

      firstObject = 0;
      goto LABEL_21;
    }

    if (v23)
    {
      *buf = 138412546;
      v77 = guid;
      v78 = 2112;
      v79 = v61;
      v20 = "Message %@ has a reference to a single message %@.";
      goto LABEL_19;
    }
  }

  else
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v77 = guid;
      v78 = 2112;
      v79 = v61;
      v20 = "Message %@ has a reference to multi-part message %@. Reference should be to a single part, e.g. a tapback on a photo in a group of photos, but we do not have the infomration to resolve which part. Naively choosing the first part.";
LABEL_19:
      _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, v20, buf, 0x16u);
    }
  }

  firstObject = [v18 firstObject];
LABEL_21:

LABEL_22:
  v55 = guid;
  v57 = providerCopy;
  v58 = v16;
  v60 = referencedMessage;
  attributedText = [messageCopy attributedText];
  if (!attributedText)
  {
    body = [messageCopy body];
    v26 = body;
    v27 = &stru_286693278;
    if (body)
    {
      v27 = body;
    }

    v28 = v27;

    attributedText = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v28];
  }

  v54 = attributedText;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  attachments = [messageCopy attachments];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v32 = [attachments countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v72;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v72 != v34)
        {
          objc_enumerationMutation(attachments);
        }

        v36 = *(*(&v71 + 1) + 8 * i);
        guid3 = [v36 guid];
        if ([guid3 length])
        {
          [v30 setObject:v36 forKeyedSubscript:guid3];
        }
      }

      v33 = [attachments countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v33);
  }

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_2547BED24;
  v62[3] = &unk_279786B30;
  v70 = selfCopy;
  v63 = v30;
  v64 = messageCopy;
  v65 = firstObject;
  v66 = v61;
  v38 = v55;
  v67 = v38;
  v68 = v57;
  v39 = v29;
  v69 = v39;
  v40 = v57;
  v41 = v61;
  v42 = firstObject;
  v43 = messageCopy;
  v44 = v30;
  [v54 __im_visitMessageParts:v62];
  v45 = IMLogHandleForCategory();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = [v39 count];
    *buf = 138412546;
    v77 = v38;
    v78 = 2048;
    v79 = v46;
    _os_log_impl(&dword_25479E000, v45, OS_LOG_TYPE_INFO, "Message %@ converted to %ld INMessages", buf, 0x16u);
  }

  v47 = _IMAssistantCoreGeneralSignpostLogHandle();
  v48 = v47;
  if (v59 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v48, OS_SIGNPOST_INTERVAL_END, spid, "INMessagesForSPIMessage", &unk_2547CAD0B, buf, 2u);
  }

  v49 = v69;
  v50 = v39;

  v51 = *MEMORY[0x277D85DE8];
  return v39;
}

+ (id)inlineGlyphContentFromAttributedMessageBody:(id)body attachmentProvider:(id)provider
{
  v27 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  providerCopy = provider;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [bodyCopy length];
  v10 = *MEMORY[0x277D19100];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2547BF92C;
  v19[3] = &unk_279786B58;
  v11 = providerCopy;
  v21 = v11;
  selfCopy = self;
  v12 = array;
  v20 = v12;
  [bodyCopy enumerateAttribute:v10 inRange:0 options:v9 usingBlock:{0, v19}];
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(bodyCopy, "length")}];
    *buf = 138412546;
    v24 = v14;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Attributed string length: %@, resulting inlineGlyphContent array: %@", buf, 0x16u);
  }

  v15 = v20;
  v16 = v12;

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)INStickerForIMSPIAttachment:(id)attachment
{
  v33 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  if ([attachmentCopy count] == 1)
  {
    v4 = [attachmentCopy objectAtIndexedSubscript:0];
    stickerUserInfo = [v4 stickerUserInfo];
    v6 = [stickerUserInfo valueForKey:*MEMORY[0x277D1A740]];

    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v31 = 138412290;
      v32 = v6;
      _os_log_impl(&dword_25479E000, v7, OS_LOG_TYPE_INFO, "Sticker externalURI: %@", &v31, 0xCu);
    }

    if (v6)
    {
      v8 = [v6 stringByReplacingOccurrencesOfString:@"sticker:///" withString:&stru_286693278];
      v9 = [v8 componentsSeparatedByString:@"/"];
      if ([v9 count] == 3)
      {
        v10 = [v9 objectAtIndexedSubscript:0];
        v11 = [v10 isEqualToString:@"memoji"];

        if (v11)
        {
          v12 = *MEMORY[0x277CD45A8];
          v13 = [v9 objectAtIndexedSubscript:1];
          if ([v13 length])
          {
            v14 = [v9 objectAtIndexedSubscript:1];
          }

          else
          {
            v14 = @"memoji";
          }

          v29 = [v9 objectAtIndexedSubscript:2];
          v16 = [v29 stringByReplacingOccurrencesOfString:v14 withString:&stru_286693278];

          if ([v16 hasPrefix:@"_"])
          {
            v30 = [v16 stringByReplacingCharactersInRange:0 withString:{1, &stru_286693278}];

            v15 = 0;
            v16 = v30;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v25 = [v9 objectAtIndexedSubscript:0];
          v26 = [v25 isEqualToString:@"emoji"];

          if (v26)
          {
            v15 = [v9 objectAtIndexedSubscript:2];
            v16 = 0;
            v14 = 0;
            v12 = 1;
          }

          else
          {
            v27 = [v9 objectAtIndexedSubscript:0];
            v28 = [v27 isEqualToString:@"user"];

            v15 = 0;
            v16 = 0;
            v14 = 0;
            if (v28)
            {
              v12 = *MEMORY[0x277CD4598];
            }

            else
            {
              v12 = 2;
            }
          }
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v14 = 0;
        v12 = 2;
      }

      lastObject = 0;
    }

    else
    {
      v18 = [attachmentCopy objectAtIndexedSubscript:0];
      stickerUserInfo2 = [v18 stickerUserInfo];
      v8 = [stickerUserInfo2 valueForKey:*MEMORY[0x277D1A760]];

      v20 = [v8 componentsSeparatedByString:@":"];
      lastObject = [v20 lastObject];

      if (lastObject)
      {
        v15 = 0;
        v16 = 0;
        v14 = 0;
        if ([lastObject length])
        {
          v12 = *MEMORY[0x277CD4590];
        }

        else
        {
          v12 = 2;
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v14 = 0;
        v12 = 2;
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    lastObject = 0;
    v14 = 0;
    v12 = 2;
  }

  v21 = [objc_alloc(MEMORY[0x277CD41E8]) initWithType:v12 avatarDescriptor:v14 appBundleID:lastObject stickerDescription:v16 emoji:v15];
  v22 = IMLogHandleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v31 = 138412290;
    v32 = v21;
    _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "INStickerForIMSPIAttachment sticker: %@", &v31, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)_stringByRemovingMessagesControlCharactersFromString:(id)string
{
  v3 = [string stringByReplacingOccurrencesOfString:*MEMORY[0x277D190A0] withString:@" "];
  v4 = [v3 stringByReplacingOccurrencesOfString:*MEMORY[0x277D190C0] withString:@" "];

  return v4;
}

+ (id)INMessageForOutgoingIMMessage:(id)message toChat:(id)chat messageType:(int64_t)type personProvider:(id)provider
{
  v59 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  v10 = _IMAssistantCoreGeneralSignpostLogHandle();
  v11 = os_signpost_id_generate(v10);

  v12 = _IMAssistantCoreGeneralSignpostLogHandle();
  v13 = v12;
  v49 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "INMessageForOutgoingIMMessage", &unk_2547CAD0B, buf, 2u);
  }

  spid = v11;

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v52 = chatCopy;
  v15 = [chatCopy participantsWithState:16];
  v16 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v54;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v54 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [self spiHandleForIMHandle:*(*(&v53 + 1) + 8 * i) isMe:0];
        v21 = [MEMORY[0x277CD3E90] __im_personFromSPIHandle:v20 contact:0];
        [v14 addObject:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v17);
  }

  lastAddressedHandleID = [chatCopy lastAddressedHandleID];
  account = [chatCopy account];
  countryCode = [account countryCode];

  v45 = countryCode;
  v46 = lastAddressedHandleID;
  v44 = [objc_alloc(MEMORY[0x277D18DC8]) initWithAddress:lastAddressedHandleID countryCode:countryCode isMe:1];
  v51 = [MEMORY[0x277CD3E90] __im_personFromSPIHandle:? contact:?];
  plainBody = [messageCopy plainBody];
  v26 = plainBody;
  if (plainBody)
  {
    string = plainBody;
  }

  else
  {
    text = [messageCopy text];
    string = [text string];
  }

  v42 = objc_alloc(MEMORY[0x277CD3DE0]);
  guid = [messageCopy guid];
  chatIdentifier = [chatCopy chatIdentifier];
  time = [messageCopy time];
  v31 = [v14 copy];
  v32 = [IMAssistantINMessageConverter __INSpeakableStringForChat:chatCopy];
  v50 = messageCopy;
  expressiveSendStyleID = [messageCopy expressiveSendStyleID];
  v34 = [IMAssistantINMessageConverter messageEffectTypeFromExpressiveSendId:expressiveSendStyleID];
  account2 = [v52 account];
  serviceName = [account2 serviceName];
  v48 = [v42 initWithIdentifier:guid conversationIdentifier:chatIdentifier content:v32 dateSent:0 sender:0 recipients:type groupName:v34 dateMessageWasLastRead:0 numberOfAttachments:serviceName messageType:? messageEffectType:? referencedMessage:? serviceName:?];

  v37 = _IMAssistantCoreGeneralSignpostLogHandle();
  v38 = v37;
  if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v38, OS_SIGNPOST_INTERVAL_END, spid, "INMessageForOutgoingIMMessage", &unk_2547CAD0B, buf, 2u);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v48;
}

@end
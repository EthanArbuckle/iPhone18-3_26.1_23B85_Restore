@interface IMAssistantINMessageConverter
+ (id)INMessageForOutgoingIMMessage:(id)a3 toChat:(id)a4 messageType:(int64_t)a5 personProvider:(id)a6;
+ (id)INMessagesForSPIMessage:(id)a3 personProvider:(id)a4;
+ (id)INPersonsForSPIHandles:(id)a3 personProvider:(id)a4;
+ (id)INStickerForIMSPIAttachment:(id)a3;
+ (id)__INMessageLinkMetadataForLPLinkMetadata:(id)a3;
+ (id)__INSpeakableStringForChat:(id)a3;
+ (id)__INSpeakableStringForMessage:(id)a3;
+ (id)_stringByRemovingMessagesControlCharactersFromString:(id)a3;
+ (id)expressiveSendIdFromMessageEffectType:(int64_t)a3;
+ (id)inlineGlyphContentFromAttributedMessageBody:(id)a3 attachmentProvider:(id)a4;
+ (id)makeINMessage:(int64_t)a3 message:(id)a4 numberOfAttachments:(int64_t)a5 personProvider:(id)a6 referencedINMessage:(id)a7 content:(id)a8 reaction:(id)a9 inlineGlyphContent:(id)a10 translatedMessagePart:(id)a11;
+ (id)messageEffectTypeToExpressiveSendIdDictionary;
+ (id)prepareAttachments:(int64_t)a3 message:(id)a4;
+ (int64_t)INMessageReactionTypeForIMSPIMessageType:(int64_t)a3;
+ (int64_t)messageEffectTypeFromExpressiveSendId:(id)a3;
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

+ (int64_t)messageEffectTypeFromExpressiveSendId:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 length])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v4 = +[IMAssistantINMessageConverter messageEffectTypeToExpressiveSendIdDictionary];
  v5 = [v4 objectForKeyedSubscript:v3];
  if (!v5)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "No effect for effect identifier: %@", &v11, 0xCu);
    }

    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 integerValue];

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)expressiveSendIdFromMessageEffectType:(int64_t)a3
{
  if (a3)
  {
    v4 = +[IMAssistantINMessageConverter messageEffectTypeToExpressiveSendIdDictionary];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v6 = [v4 allKeysForObject:v5];

    if ([v6 count])
    {
      v7 = [v6 firstObject];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)__INMessageLinkMetadataForLPLinkMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 images];
  v79 = [v4 __imArrayByApplyingBlock:&unk_286693178];

  v5 = [v3 icons];
  v78 = [v5 __imArrayByApplyingBlock:&unk_286693198];

  v41 = v3;
  v6 = [v3 specialization];
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
  v37 = v6;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v76 = [v7 storeFrontIdentifier];
    v77 = [v7 storeIdentifier];
    v42 = [v7 name];
    v43 = [v7 artist];
    v44 = [v7 album];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    v11 = 1;
LABEL_29:
    v38 = v11;
    goto LABEL_30;
  }

  if (objc_opt_isKindOfClass())
  {
    v12 = v6;
    v76 = [v12 storeFrontIdentifier];
    v77 = [v12 storeIdentifier];
    v45 = [v12 name];
    v46 = [v12 artist];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v11 = 2;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v13 = v6;
    v76 = [v13 storeFrontIdentifier];
    v77 = [v13 storeIdentifier];
    v47 = [v13 name];
    v48 = [v13 artist];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v11 = 3;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v14 = v6;
    v76 = [v14 storeFrontIdentifier];
    v77 = [v14 storeIdentifier];
    v49 = [v14 name];
    v50 = [v14 genre];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v11 = 4;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v15 = v6;
    v76 = [v15 storeFrontIdentifier];
    v77 = [v15 storeIdentifier];
    v51 = [v15 name];
    v52 = [v15 curator];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v53 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v11 = 5;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v16 = v6;
    v76 = [v16 storeFrontIdentifier];
    v77 = [v16 storeIdentifier];
    v53 = [v16 name];
    v54 = [v16 curator];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v11 = 6;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v17 = v6;
    v76 = [v17 storeFrontIdentifier];
    v77 = [v17 storeIdentifier];
    v55 = [v17 name];
    v56 = [v17 genre];
    v57 = [v17 platform];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v58 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v11 = 7;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v18 = v6;
    v76 = [v18 storeFrontIdentifier];
    v77 = [v18 storeIdentifier];
    v58 = [v18 name];
    v59 = [v18 author];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v11 = 8;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v19 = v6;
    v76 = [v19 storeFrontIdentifier];
    v77 = [v19 storeIdentifier];
    v60 = [v19 name];
    v61 = [v19 author];
    v62 = [v19 narrator];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v11 = 9;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v20 = v6;
    v76 = [v20 storeFrontIdentifier];
    v77 = [v20 storeIdentifier];
    v65 = [v20 episodeName];
    v66 = [v20 podcastName];
    v67 = [v20 artist];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v11 = 11;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v21 = v6;
    v76 = [v21 storeFrontIdentifier];
    v77 = [v21 storeIdentifier];
    v63 = [v21 name];
    v64 = [v21 artist];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v11 = 10;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v22 = v6;
    v76 = [v22 storeFrontIdentifier];
    v77 = [v22 storeIdentifier];
    v68 = [v22 episodeName];
    v69 = [v22 seasonName];
    v70 = [v22 genre];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v11 = 12;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v23 = v6;
    v76 = [v23 storeFrontIdentifier];
    v77 = [v23 storeIdentifier];
    v71 = [v23 name];
    v72 = [v23 genre];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v73 = 0;
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v11 = 13;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v24 = v6;
    v76 = [v24 storeFrontIdentifier];
    v77 = [v24 storeIdentifier];
    v73 = [v24 name];
    v75 = [v24 genre];

    v74 = 0;
    v40 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v11 = 14;
    goto LABEL_29;
  }

  if (objc_opt_isKindOfClass())
  {
    v74 = [v6 name];
    v75 = 0;
    v40 = 0;
    v8 = 0;
LABEL_37:
    v9 = 0;
    v10 = 0;
LABEL_38:
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v76 = 0;
    v77 = 0;
    v38 = 0;
    goto LABEL_30;
  }

  if (objc_opt_isKindOfClass())
  {
    v32 = v6;
    v40 = [v32 name];
    v33 = [v32 genre];

    v8 = v33;
    v74 = 0;
    v75 = 0;
    goto LABEL_37;
  }

  if (objc_opt_isKindOfClass())
  {
    v34 = v6;
    v9 = [v34 title];
    v10 = [v34 subtitle];

    v74 = 0;
    v75 = 0;
    v40 = 0;
    v8 = 0;
    goto LABEL_38;
  }

  v74 = 0;
  v75 = 0;
  v40 = 0;
  v9 = 0;
  v10 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v76 = 0;
  v77 = 0;
  v38 = 0;
  v8 = 0;
LABEL_30:
  v35 = objc_alloc(MEMORY[0x277CD3DF0]);
  v25 = [v41 siteName];
  v36 = [v41 summary];
  v26 = [v41 title];
  v27 = [v41 itemType];
  v28 = [v41 originalURL];
  v29 = [v28 absoluteString];
  v30 = [v41 creator];
  v39 = [v35 initWithSiteName:v25 summary:v36 title:v26 itemType:v27 originalURL:v29 imageURLs:v79 iconURLs:v78 creator:v30 linkMediaType:v38 iTunesStoreIdentifier:v77 iTunesStoreFrontIdentifier:v76 songTitle:v42 songArtist:v43 songAlbum:v44 albumName:v45 albumArtist:v46 musicVideoName:v47 musicVideoArtist:v48 artistName:v49 artistGenre:v50 playlistName:v51 playlistCurator:v52 radioName:v53 radioCurator:v54 softwareName:v55 softwareGenre:v56 softwarePlatform:v57 bookName:v58 bookAuthor:v59 audioBookName:v60 audioBookAuthor:v61 audioBookNarrator:v62 podcastName:v63 podcastArtist:v64 podcastEpisodeName:v65 podcastEpisodePodcastName:v66 podcastEpisodeArtist:v67 podcastEpisodeReleaseDate:0 tvEpisodeEpisodeName:v68 tvEpisodeSeasonName:v69 tvEpisodeGenre:v70 tvSeasonName:v71 tvSeasonGenre:v72 movieName:v73 movieGenre:v75 tvShowName:v74 movieBundleName:v40 movieBundleGenre:v8 appleTvTitle:v9 appleTvSubtitle:v10];

  return v39;
}

+ (id)__INSpeakableStringForMessage:(id)a3
{
  v3 = a3;
  if ([v3 isGroupChat])
  {
    v4 = [v3 displayName];
    if ([v4 length])
    {
      v5 = objc_alloc(MEMORY[0x277CD4188]);
      v6 = [v3 chatIdentifier];
      v7 = [v3 displayName];
      v8 = [v5 initWithVocabularyIdentifier:v6 spokenPhrase:v7 pronunciationHint:0];
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

+ (id)__INSpeakableStringForChat:(id)a3
{
  v3 = a3;
  if ([v3 isGroupChat])
  {
    v4 = [v3 displayName];
    if ([v4 length])
    {
      v5 = objc_alloc(MEMORY[0x277CD4188]);
      v6 = [v3 chatIdentifier];
      v7 = [v5 initWithVocabularyIdentifier:v6 spokenPhrase:v4 pronunciationHint:0];
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

+ (id)INPersonsForSPIHandles:(id)a3 personProvider:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2547BD9F0;
  v9[3] = &unk_279786AE0;
  v10 = v5;
  v6 = v5;
  v7 = [a3 __imArrayByApplyingBlock:v9];

  return v7;
}

+ (id)prepareAttachments:(int64_t)a3 message:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v4 attachments];
  v6 = [v5 count];

  if (v6)
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = NSTemporaryDirectory();
    v9 = [v7 fileURLWithPath:v8];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = v4;
    obj = [v4 attachments];
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
          v15 = [v14 fileUrl];

          if (v15)
          {
            v16 = [v14 fileUrl];
            v17 = [v16 lastPathComponent];

            v18 = [v9 URLByAppendingPathComponent:v17];
            v19 = [MEMORY[0x277CCAA00] defaultManager];
            [v19 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:0];

            v20 = [MEMORY[0x277CCAA00] defaultManager];
            v21 = [v14 fileUrl];
            v36 = v12;
            [v20 copyItemAtURL:v21 toURL:v18 error:&v36];
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
                v24 = [v14 fileUrl];
                v25 = [v22 code];
                *buf = 138412802;
                v42 = v24;
                v43 = 2112;
                v44 = v18;
                v45 = 2048;
                v46 = v25;
                _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "File URL: %@ temp URL: %@, overwrite = %ld", buf, 0x20u);
              }

              v26 = MEMORY[0x277CD3C08];
              v27 = [v14 uti];
              v28 = [v26 fileWithFileURL:v18 filename:v17 typeIdentifier:v27];
              [v33 addObject:v28];
            }

            v12 = v22;
          }

          else
          {
            v17 = IMLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "Error: Attachment fileURL is nil. Skipping copy", buf, 2u);
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

    v4 = v32;
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

+ (int64_t)INMessageReactionTypeForIMSPIMessageType:(int64_t)a3
{
  result = 1;
  if (a3 <= 112)
  {
    if (a3 > 105)
    {
      if (a3 > 108)
      {
        switch(a3)
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

      else if (a3 == 106)
      {
        v7 = MEMORY[0x277CD44F8];
      }

      else if (a3 == 107)
      {
        v7 = MEMORY[0x277CD4500];
      }

      else
      {
        v7 = MEMORY[0x277CD4520];
      }

      return *v7;
    }

    if ((a3 - 100) >= 5)
    {
      if (a3 != 105)
      {
        return result;
      }

      v7 = MEMORY[0x277CD4518];
      return *v7;
    }
  }

  else if ((a3 - 200) >= 0x18)
  {
    if (a3 != 113)
    {
      if (a3 == 114)
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

+ (id)makeINMessage:(int64_t)a3 message:(id)a4 numberOfAttachments:(int64_t)a5 personProvider:(id)a6 referencedINMessage:(id)a7 content:(id)a8 reaction:(id)a9 inlineGlyphContent:(id)a10 translatedMessagePart:(id)a11
{
  v85 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a6;
  v82 = a7;
  v17 = a8;
  v81 = a9;
  v80 = a10;
  v18 = a11;
  v19 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(a7) = [v19 isZelkovaEnabled];

  if (a7 && [v15 messageType] == 215)
  {
    v20 = [v15 extensionPayloadURL];
    v21 = [v20 absoluteString];

    v17 = v21;
  }

  if (v18)
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "IMAssistantINMessageConverter: Translated message, using translated text for content", buf, 2u);
    }

    v23 = [v18 translatedText];
    v24 = [v23 string];
    v25 = [a1 _stringByRemovingMessagesControlCharactersFromString:v24];

    v26 = [v18 translationLanguage];
    v73 = [v26 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    v17 = v25;
  }

  else
  {
    v73 = 0;
  }

  v27 = a1;
  v75 = v18;
  v76 = v16;
  v77 = v17;
  v74 = a1;
  v70 = v15;
  if (a3 == 15 && ([v15 attachments], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v29 == 1))
  {
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "IMAssistantINMessageConverter: Image type attachments", buf, 2u);
    }

    v31 = [a1 prepareAttachments:15 message:v15];
    v32 = objc_alloc(MEMORY[0x277CD3DE0]);
    v33 = [v15 guid];
    v34 = [v15 chatIdentifier];
    v35 = [v15 date];
    v79 = [v15 sender];
    v36 = [v16 personFromSPIHandle:?];
    v72 = [v15 recipients];
    v37 = v34;
    v38 = [a1 INPersonsForSPIHandles:? personProvider:?];
    v39 = [IMAssistantINMessageConverter __INSpeakableStringForMessage:v15];
    v40 = [v15 service];
    v41 = [v32 initWithIdentifier:v33 conversationIdentifier:v34 content:v77 dateSent:v35 sender:v36 recipients:v38 groupName:v39 messageType:15 serviceName:v40 attachmentFiles:v31];
  }

  else
  {
    v69 = objc_alloc(MEMORY[0x277CD3DE0]);
    v66 = [v15 guid];
    v67 = [v15 chatIdentifier];
    v65 = [v15 date];
    v68 = [v15 sender];
    v42 = [v16 personFromSPIHandle:v68];
    [v15 recipients];
    v64 = v43 = v17;
    [v27 INPersonsForSPIHandles:v64 personProvider:v16];
    v45 = v44 = v15;
    v46 = [IMAssistantINMessageConverter __INSpeakableStringForMessage:v15];
    v39 = [v15 dateForLastReadMessageInChat];
    v40 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    v47 = [v44 effect];
    v48 = [IMAssistantINMessageConverter messageEffectTypeFromExpressiveSendId:v47];
    v49 = [v44 service];
    v50 = v43;
    v51 = v49;
    v63 = v48;
    v31 = v66;
    v33 = v67;
    v62 = a3;
    v37 = v65;
    v79 = v42;
    v72 = v45;
    v41 = [v69 initWithIdentifier:v66 conversationIdentifier:v67 content:v50 dateSent:v65 sender:v42 recipients:v45 groupName:v46 dateMessageWasLastRead:v39 numberOfAttachments:v40 messageType:v62 messageEffectType:v63 referencedMessage:v82 serviceName:v49 attachmentFiles:0 location:0 linkMetadata:0 reaction:v81 sticker:0 inlineGlyphContent:v80];

    v38 = v46;
    v36 = v64;

    v35 = v68;
  }

  if (v73 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v41 setTranslatedToLanguage:v73];
  }

  v52 = [v70 richLinkMetadata];
  if (v52)
  {
    v53 = [v74 __INMessageLinkMetadataForLPLinkMetadata:v52];
    [v41 setLinkMetadata:v53];
    v54 = IMLogHandleForCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v84 = v53;
      _os_log_impl(&dword_25479E000, v54, OS_LOG_TYPE_INFO, "Link Metadata: %@", buf, 0xCu);
    }
  }

  v55 = [v70 peerPaymentAmount];
  if (v55)
  {
    v56 = objc_alloc(MEMORY[0x277CD3B50]);
    v57 = [v55 amount];
    v58 = [v55 currency];
    v59 = [v56 initWithAmount:v57 currencyCode:v58];

    [v41 setPaymentAmount:v59];
  }

  v60 = *MEMORY[0x277D85DE8];

  return v41;
}

+ (id)INMessagesForSPIMessage:(id)a3 personProvider:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

  v12 = [v6 guid];
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v77 = v12;
    _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Converting IMSPIMessage to INMessages. Message to be converted: %@", buf, 0xCu);
  }

  v14 = [v6 referencedMessage];
  v15 = [v14 guid];
  v61 = v15;
  if (v14)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yes, a reference to: %@", v15];
  }

  else
  {
    v16 = @"No";
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v77 = v12;
    v78 = 2112;
    v79 = v16;
    _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "Message (guid: %@) has a referenced message? %@", buf, 0x16u);
  }

  spid = v9;
  v56 = a1;
  if (!v14)
  {
    v21 = 0;
    goto LABEL_22;
  }

  v18 = [a1 INMessagesForSPIMessage:v14 personProvider:v7];
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
        v77 = v12;
        v78 = 2112;
        v79 = v61;
        _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Message %@ has a reference to a message %@ that could not be converted to an INMessage.", buf, 0x16u);
      }

      v21 = 0;
      goto LABEL_21;
    }

    if (v23)
    {
      *buf = 138412546;
      v77 = v12;
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
      v77 = v12;
      v78 = 2112;
      v79 = v61;
      v20 = "Message %@ has a reference to multi-part message %@. Reference should be to a single part, e.g. a tapback on a photo in a group of photos, but we do not have the infomration to resolve which part. Naively choosing the first part.";
LABEL_19:
      _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, v20, buf, 0x16u);
    }
  }

  v21 = [v18 firstObject];
LABEL_21:

LABEL_22:
  v55 = v12;
  v57 = v7;
  v58 = v16;
  v60 = v14;
  v24 = [v6 attributedText];
  if (!v24)
  {
    v25 = [v6 body];
    v26 = v25;
    v27 = &stru_286693278;
    if (v25)
    {
      v27 = v25;
    }

    v28 = v27;

    v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v28];
  }

  v54 = v24;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = [v6 attachments];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v71 objects:v75 count:16];
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
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v71 + 1) + 8 * i);
        v37 = [v36 guid];
        if ([v37 length])
        {
          [v30 setObject:v36 forKeyedSubscript:v37];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v33);
  }

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_2547BED24;
  v62[3] = &unk_279786B30;
  v70 = v56;
  v63 = v30;
  v64 = v6;
  v65 = v21;
  v66 = v61;
  v38 = v55;
  v67 = v38;
  v68 = v57;
  v39 = v29;
  v69 = v39;
  v40 = v57;
  v41 = v61;
  v42 = v21;
  v43 = v6;
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

+ (id)inlineGlyphContentFromAttributedMessageBody:(id)a3 attachmentProvider:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [v6 length];
  v10 = *MEMORY[0x277D19100];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2547BF92C;
  v19[3] = &unk_279786B58;
  v11 = v7;
  v21 = v11;
  v22 = a1;
  v12 = v8;
  v20 = v12;
  [v6 enumerateAttribute:v10 inRange:0 options:v9 usingBlock:{0, v19}];
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
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

+ (id)INStickerForIMSPIAttachment:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 stickerUserInfo];
    v6 = [v5 valueForKey:*MEMORY[0x277D1A740]];

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

      v17 = 0;
    }

    else
    {
      v18 = [v3 objectAtIndexedSubscript:0];
      v19 = [v18 stickerUserInfo];
      v8 = [v19 valueForKey:*MEMORY[0x277D1A760]];

      v20 = [v8 componentsSeparatedByString:@":"];
      v17 = [v20 lastObject];

      if (v17)
      {
        v15 = 0;
        v16 = 0;
        v14 = 0;
        if ([v17 length])
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
    v17 = 0;
    v14 = 0;
    v12 = 2;
  }

  v21 = [objc_alloc(MEMORY[0x277CD41E8]) initWithType:v12 avatarDescriptor:v14 appBundleID:v17 stickerDescription:v16 emoji:v15];
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

+ (id)_stringByRemovingMessagesControlCharactersFromString:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:*MEMORY[0x277D190A0] withString:@" "];
  v4 = [v3 stringByReplacingOccurrencesOfString:*MEMORY[0x277D190C0] withString:@" "];

  return v4;
}

+ (id)INMessageForOutgoingIMMessage:(id)a3 toChat:(id)a4 messageType:(int64_t)a5 personProvider:(id)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
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
  v52 = v9;
  v15 = [v9 participantsWithState:16];
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

        v20 = [a1 spiHandleForIMHandle:*(*(&v53 + 1) + 8 * i) isMe:0];
        v21 = [MEMORY[0x277CD3E90] __im_personFromSPIHandle:v20 contact:0];
        [v14 addObject:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v17);
  }

  v22 = [v9 lastAddressedHandleID];
  v23 = [v9 account];
  v24 = [v23 countryCode];

  v45 = v24;
  v46 = v22;
  v44 = [objc_alloc(MEMORY[0x277D18DC8]) initWithAddress:v22 countryCode:v24 isMe:1];
  v51 = [MEMORY[0x277CD3E90] __im_personFromSPIHandle:? contact:?];
  v25 = [v8 plainBody];
  v26 = v25;
  if (v25)
  {
    v43 = v25;
  }

  else
  {
    v27 = [v8 text];
    v43 = [v27 string];
  }

  v42 = objc_alloc(MEMORY[0x277CD3DE0]);
  v28 = [v8 guid];
  v29 = [v9 chatIdentifier];
  v30 = [v8 time];
  v31 = [v14 copy];
  v32 = [IMAssistantINMessageConverter __INSpeakableStringForChat:v9];
  v50 = v8;
  v33 = [v8 expressiveSendStyleID];
  v34 = [IMAssistantINMessageConverter messageEffectTypeFromExpressiveSendId:v33];
  v35 = [v52 account];
  v36 = [v35 serviceName];
  v48 = [v42 initWithIdentifier:v28 conversationIdentifier:v29 content:v32 dateSent:0 sender:0 recipients:a5 groupName:v34 dateMessageWasLastRead:0 numberOfAttachments:v36 messageType:? messageEffectType:? referencedMessage:? serviceName:?];

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
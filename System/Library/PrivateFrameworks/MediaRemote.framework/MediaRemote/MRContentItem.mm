@interface MRContentItem
+ (id)extractedIdentifierFromNowPlayingInfo:(id)a3;
+ (id)mergeContentItems:(id)a3;
- (BOOL)isEffectivelyEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MRContentItem)initWithData:(id)a3;
- (MRContentItem)initWithIdentifier:(id)a3;
- (MRContentItem)initWithNowPlayingInfo:(id)a3;
- (MRContentItem)initWithProtobuf:(id)a3;
- (MRContentItem)skeleton;
- (MRContentItemMetadata)metadata;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)nowPlayingInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)protobufWithEncoding:(int64_t)a3;
- (void)mergeFrom:(id)a3;
- (void)setNowPlayingInfo:(id)a3 policy:(unsigned __int8)a4 request:(id)a5;
@end

@implementation MRContentItem

- (MRContentItemMetadata)metadata
{
  v2 = self;
  objc_sync_enter(v2);
  metadata = v2->_metadata;
  if (!metadata)
  {
    v4 = objc_alloc_init(MRContentItemMetadata);
    v5 = v2->_metadata;
    v2->_metadata = v4;

    metadata = v2->_metadata;
  }

  v6 = metadata;
  objc_sync_exit(v2);

  return v6;
}

- (NSDictionary)nowPlayingInfo
{
  v305[4] = *MEMORY[0x1E69E9840];
  v3 = [(MRContentItem *)self metadata];
  v4 = [v3 nowPlayingInfo];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = [(MRContentItem *)self identifier];

  if (v6)
  {
    v7 = [(MRContentItem *)self identifier];
    [(NSDictionary *)v5 setObject:v7 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoContentItemIdentifier"];
  }

  v8 = [(MRContentItem *)self metadata];
  v9 = [v8 albumName];

  if (v9)
  {
    v10 = [(MRContentItem *)self metadata];
    v11 = [v10 albumName];
    [(NSDictionary *)v5 setObject:v11 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAlbum"];
  }

  v12 = [(MRContentItem *)self metadata];
  v13 = [v12 trackArtistName];

  if (v13)
  {
    v14 = [(MRContentItem *)self metadata];
    v15 = [v14 trackArtistName];
    [(NSDictionary *)v5 setObject:v15 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtist"];
  }

  v16 = [(MRContentItem *)self metadata];
  v17 = [v16 assetURL];

  if (v17)
  {
    v18 = [(MRContentItem *)self metadata];
    v19 = [v18 assetURL];
    [(NSDictionary *)v5 setObject:v19 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAssetURL"];
  }

  v20 = [(MRContentItem *)self metadata];
  v21 = [v20 composer];

  if (v21)
  {
    v22 = [(MRContentItem *)self metadata];
    v23 = [v22 composer];
    [(NSDictionary *)v5 setObject:v23 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoComposer"];
  }

  v24 = [(MRContentItem *)self metadata];
  v25 = [v24 hasDiscNumber];

  if (v25)
  {
    v26 = MEMORY[0x1E696AD98];
    v27 = [(MRContentItem *)self metadata];
    v28 = [v26 numberWithInteger:{objc_msgSend(v27, "discNumber")}];
    [(NSDictionary *)v5 setObject:v28 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDiscNumber"];
  }

  v29 = [(MRContentItem *)self metadata];
  v30 = [v29 genre];

  if (v30)
  {
    v31 = [(MRContentItem *)self metadata];
    v32 = [v31 genre];
    [(NSDictionary *)v5 setObject:v32 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoGenre"];
  }

  v33 = [(MRContentItem *)self metadata];
  v34 = [v33 hasPlaybackRate];

  if (v34)
  {
    v35 = MEMORY[0x1E696AD98];
    v36 = [(MRContentItem *)self metadata];
    [v36 playbackRate];
    v37 = [v35 numberWithFloat:?];
    [(NSDictionary *)v5 setObject:v37 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackRate"];
  }

  v38 = [(MRContentItem *)self metadata];
  v39 = [v38 currentPlaybackDate];

  if (v39)
  {
    v40 = [(MRContentItem *)self metadata];
    v41 = [v40 currentPlaybackDate];
    [(NSDictionary *)v5 setObject:v41 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCurrentPlaybackDate"];
  }

  v42 = [(MRContentItem *)self metadata];
  v43 = [v42 hasAlwaysLive];

  if (v43)
  {
    v44 = MEMORY[0x1E696AD98];
    v45 = [(MRContentItem *)self metadata];
    v46 = [v44 numberWithBool:{objc_msgSend(v45, "isAlwaysLive")}];
    [(NSDictionary *)v5 setObject:v46 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAlwaysLive"];
  }

  v47 = [(MRContentItem *)self metadata];
  v48 = [v47 isAlwaysLive];

  if ((v48 & 1) == 0)
  {
    v49 = [(MRContentItem *)self metadata];
    v50 = [v49 hasDuration];

    if (v50)
    {
      v51 = MEMORY[0x1E696AD98];
      v52 = [(MRContentItem *)self metadata];
      [v52 duration];
      v53 = [v51 numberWithDouble:?];
      [(NSDictionary *)v5 setObject:v53 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDuration"];
    }

    v54 = [(MRContentItem *)self metadata];
    v55 = [v54 hasElapsedTime];

    if (v55)
    {
      v56 = MEMORY[0x1E696AD98];
      v57 = [(MRContentItem *)self metadata];
      [v57 elapsedTime];
      v58 = [v56 numberWithDouble:?];
      [(NSDictionary *)v5 setObject:v58 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoElapsedTime"];
    }
  }

  v59 = [(MRContentItem *)self metadata];
  v60 = [v59 hasInTransition];

  if (v60)
  {
    v61 = MEMORY[0x1E696AD98];
    v62 = [(MRContentItem *)self metadata];
    v63 = [v61 numberWithBool:{objc_msgSend(v62, "isInTransition")}];
    [(NSDictionary *)v5 setObject:v63 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInTransition"];
  }

  v64 = [(MRContentItem *)self metadata];
  v65 = [v64 hasInferredTimestamp];

  if (v65)
  {
    v66 = MEMORY[0x1E696AD98];
    v67 = [(MRContentItem *)self metadata];
    [v67 inferredTimestamp];
    v68 = [v66 numberWithDouble:?];
    [(NSDictionary *)v5 setObject:v68 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
  }

  v69 = [(MRContentItem *)self metadata];
  v70 = [v69 hasElapsedTimeTimestamp];

  if (v70)
  {
    v71 = MEMORY[0x1E696AD98];
    v72 = [(MRContentItem *)self metadata];
    [v72 elapsedTimeTimestamp];
    v73 = [v71 numberWithDouble:?];
    [(NSDictionary *)v5 setObject:v73 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
  }

  v74 = [(NSDictionary *)v5 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
  v75 = v74;
  if (v74)
  {
    v76 = MEMORY[0x1E695DF00];
    [v74 doubleValue];
    v77 = [v76 dateWithTimeIntervalSinceReferenceDate:?];
    [(NSDictionary *)v5 setObject:v77 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
  }

  v78 = [(MRContentItem *)self metadata];
  v79 = [v78 hasStartTime];

  if (v79)
  {
    v80 = MEMORY[0x1E695DF00];
    v81 = [(MRContentItem *)self metadata];
    [v81 startTime];
    v82 = [v80 dateWithTimeIntervalSinceReferenceDate:?];

    [(NSDictionary *)v5 setObject:v82 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoStartTime"];
  }

  v83 = [(MRContentItem *)self metadata];
  v84 = [v83 title];

  if (v84)
  {
    v85 = [(MRContentItem *)self metadata];
    v86 = [v85 title];
    [(NSDictionary *)v5 setObject:v86 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTitle"];
  }

  v87 = [(MRContentItem *)self metadata];
  v88 = [v87 hasTotalDiscCount];

  if (v88)
  {
    v89 = MEMORY[0x1E696AD98];
    v90 = [(MRContentItem *)self metadata];
    v91 = [v89 numberWithInteger:{objc_msgSend(v90, "totalDiscCount")}];
    [(NSDictionary *)v5 setObject:v91 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalDiscCount"];
  }

  v92 = [(MRContentItem *)self metadata];
  v93 = [v92 hasTotalTrackCount];

  if (v93)
  {
    v94 = MEMORY[0x1E696AD98];
    v95 = [(MRContentItem *)self metadata];
    v96 = [v94 numberWithInteger:{objc_msgSend(v95, "totalTrackCount")}];
    [(NSDictionary *)v5 setObject:v96 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalTrackCount"];
  }

  v97 = [(MRContentItem *)self metadata];
  v98 = [v97 hasTrackNumber];

  if (v98)
  {
    v99 = MEMORY[0x1E696AD98];
    v100 = [(MRContentItem *)self metadata];
    v101 = [v99 numberWithInteger:{objc_msgSend(v100, "trackNumber")}];
    [(NSDictionary *)v5 setObject:v101 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTrackNumber"];
  }

  v102 = [(MRContentItem *)self metadata];
  v103 = [v102 collectionIdentifier];

  if (v103)
  {
    v104 = [(MRContentItem *)self metadata];
    v105 = [v104 collectionIdentifier];
    [(NSDictionary *)v5 setObject:v105 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCollectionIdentifier"];
  }

  v106 = [(MRContentItem *)self metadata];
  v107 = [v106 contentIdentifier];

  if (v107)
  {
    v108 = [(MRContentItem *)self metadata];
    v109 = [v108 contentIdentifier];
    [(NSDictionary *)v5 setObject:v109 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExternalContentIdentifier"];
  }

  v110 = [(MRContentItem *)self metadata];
  v111 = [v110 profileIdentifier];

  if (v111)
  {
    v112 = [(MRContentItem *)self metadata];
    v113 = [v112 profileIdentifier];
    [(NSDictionary *)v5 setObject:v113 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExternalProfileIdentifier"];
  }

  v114 = [(MRContentItem *)self metadata];
  v115 = [v114 serviceIdentifier];

  if (v115)
  {
    v116 = [(MRContentItem *)self metadata];
    v117 = [v116 serviceIdentifier];
    [(NSDictionary *)v5 setObject:v117 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoServiceIdentifier"];
  }

  v118 = [(MRContentItem *)self metadata];
  v119 = [v118 brandIdentifier];

  if (v119)
  {
    v120 = [(MRContentItem *)self metadata];
    v121 = [v120 brandIdentifier];
    [(NSDictionary *)v5 setObject:v121 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoBrandIdentifier"];
  }

  v122 = [(MRContentItem *)self metadata];
  v123 = [v122 hasPlaybackProgress];

  if (v123)
  {
    v124 = MEMORY[0x1E696AD98];
    v125 = [(MRContentItem *)self metadata];
    [v125 playbackProgress];
    v126 = [v124 numberWithFloat:?];
    [(NSDictionary *)v5 setObject:v126 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackProgress"];
  }

  v127 = [(MRContentItem *)self metadata];
  v128 = [v127 hasExplicitItem];

  if (v128)
  {
    v129 = MEMORY[0x1E696AD98];
    v130 = [(MRContentItem *)self metadata];
    v131 = [v129 numberWithBool:{objc_msgSend(v130, "isExplicitItem")}];
    [(NSDictionary *)v5 setObject:v131 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsExplicitTrack"];
  }

  v132 = [(MRContentItem *)self metadata];
  v133 = [v132 hasSharable];

  if (v133)
  {
    v134 = MEMORY[0x1E696AD98];
    v135 = [(MRContentItem *)self metadata];
    v136 = [v134 numberWithBool:{objc_msgSend(v135, "isSharable")}];
    [(NSDictionary *)v5 setObject:v136 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSharable"];
  }

  v137 = [(MRContentItem *)self metadata];
  v138 = [v137 hasLiked];

  if (v138)
  {
    v139 = MEMORY[0x1E696AD98];
    v140 = [(MRContentItem *)self metadata];
    v141 = [v139 numberWithBool:{objc_msgSend(v140, "isLiked")}];
    [(NSDictionary *)v5 setObject:v141 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsLiked"];
  }

  v142 = [(MRContentItem *)self metadata];
  v143 = [v142 hasInWishList];

  if (v143)
  {
    v144 = MEMORY[0x1E696AD98];
    v145 = [(MRContentItem *)self metadata];
    v146 = [v144 numberWithBool:{objc_msgSend(v145, "isInWishList")}];
    [(NSDictionary *)v5 setObject:v146 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInWishList"];
  }

  v147 = [(MRContentItem *)self metadata];
  v148 = [v147 hasRadioStationIdentifier];

  if (v148)
  {
    v149 = MEMORY[0x1E696AD98];
    v150 = [(MRContentItem *)self metadata];
    v151 = [v149 numberWithLongLong:{objc_msgSend(v150, "radioStationIdentifier")}];
    [(NSDictionary *)v5 setObject:v151 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationIdentifier"];
  }

  v152 = [(MRContentItem *)self metadata];
  v153 = [v152 radioStationName];

  if (v153)
  {
    v154 = [(MRContentItem *)self metadata];
    v155 = [v154 radioStationName];
    [(NSDictionary *)v5 setObject:v155 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationName"];
  }

  v156 = [(MRContentItem *)self metadata];
  v157 = [v156 hasRadioStationIdentifier];

  if (v157)
  {
    v158 = MEMORY[0x1E696AD98];
    v159 = [(MRContentItem *)self metadata];
    v160 = [v158 numberWithLongLong:{objc_msgSend(v159, "radioStationIdentifier")}];
    [(NSDictionary *)v5 setObject:v160 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationStringIdentifier"];
  }

  v161 = [(MRContentItem *)self metadata];
  v162 = [v161 hasITunesStoreIdentifier];

  if (v162)
  {
    v163 = MEMORY[0x1E696AD98];
    v164 = [(MRContentItem *)self metadata];
    v165 = [v163 numberWithLongLong:{objc_msgSend(v164, "iTunesStoreIdentifier")}];
    [(NSDictionary *)v5 setObject:v165 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier"];
  }

  v166 = [(MRContentItem *)self metadata];
  v167 = [v166 hasITunesStoreSubscriptionIdentifier];

  if (v167)
  {
    v168 = MEMORY[0x1E696AD98];
    v169 = [(MRContentItem *)self metadata];
    v170 = [v168 numberWithLongLong:{objc_msgSend(v169, "iTunesStoreSubscriptionIdentifier")}];
    [(NSDictionary *)v5 setObject:v170 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier"];
  }

  v171 = [(MRContentItem *)self metadata];
  v172 = [v171 hasITunesStoreArtistIdentifier];

  if (v172)
  {
    v173 = MEMORY[0x1E696AD98];
    v174 = [(MRContentItem *)self metadata];
    v175 = [v173 numberWithLongLong:{objc_msgSend(v174, "iTunesStoreArtistIdentifier")}];
    [(NSDictionary *)v5 setObject:v175 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtistiTunesStoreAdamIdentifier"];
  }

  v176 = [(MRContentItem *)self metadata];
  v177 = [v176 hasITunesStoreAlbumIdentifier];

  if (v177)
  {
    v178 = MEMORY[0x1E696AD98];
    v179 = [(MRContentItem *)self metadata];
    v180 = [v178 numberWithLongLong:{objc_msgSend(v179, "iTunesStoreAlbumIdentifier")}];
    [(NSDictionary *)v5 setObject:v180 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier"];
  }

  v181 = [(MRContentItem *)self metadata];
  v182 = [v181 purchaseInfoData];

  if (v182)
  {
    v183 = [(MRContentItem *)self metadata];
    v184 = [v183 purchaseInfoData];
    [(NSDictionary *)v5 setObject:v184 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPurchaseInfoData"];
  }

  v185 = [(MRContentItem *)self metadata];
  v186 = [v185 hasDefaultPlaybackRate];

  if (v186)
  {
    v187 = MEMORY[0x1E696AD98];
    v188 = [(MRContentItem *)self metadata];
    [v188 defaultPlaybackRate];
    v189 = [v187 numberWithFloat:?];
    [(NSDictionary *)v5 setObject:v189 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate"];
  }

  v190 = [(MRContentItem *)self metadata];
  v191 = [v190 hasDownloadState];

  if (v191)
  {
    v192 = MEMORY[0x1E696AD98];
    v193 = [(MRContentItem *)self metadata];
    v194 = [v192 numberWithInteger:{objc_msgSend(v193, "downloadState")}];
    [(NSDictionary *)v5 setObject:v194 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadState"];
  }

  v195 = [(MRContentItem *)self metadata];
  v196 = [v195 hasDownloadProgress];

  if (v196)
  {
    v197 = MEMORY[0x1E696AD98];
    v198 = [(MRContentItem *)self metadata];
    [v198 downloadProgress];
    v199 = [v197 numberWithFloat:?];
    [(NSDictionary *)v5 setObject:v199 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadProgress"];
  }

  v200 = [(MRContentItem *)self metadata];
  v201 = [v200 hasAdvertisement];

  if (v201)
  {
    v202 = MEMORY[0x1E696AD98];
    v203 = [(MRContentItem *)self metadata];
    v204 = [v202 numberWithBool:{objc_msgSend(v203, "isAdvertisement")}];
    [(NSDictionary *)v5 setObject:v204 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAdvertisement"];
  }

  v205 = [(MRContentItem *)self metadata];
  v206 = [v205 hasSteerable];

  if (v206)
  {
    v207 = MEMORY[0x1E696AD98];
    v208 = [(MRContentItem *)self metadata];
    v209 = [v207 numberWithBool:{objc_msgSend(v208, "isSteerable")}];
    [(NSDictionary *)v5 setObject:v209 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSteerable"];
  }

  v210 = [(MRContentItem *)self metadata];
  v211 = [v210 artworkIdentifier];

  if (v211)
  {
    v212 = [(MRContentItem *)self metadata];
    v213 = [v212 artworkIdentifier];
    [(NSDictionary *)v5 setObject:v213 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkIdentifier"];
  }

  v214 = [(MRContentItem *)self metadata];
  v215 = [v214 artworkURL];

  if (v215)
  {
    v216 = [(MRContentItem *)self metadata];
    v217 = [v216 artworkURL];
    v218 = [v217 absoluteString];
    [(NSDictionary *)v5 setObject:v218 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkURL"];
  }

  v219 = [(MRContentItem *)self metadata];
  v220 = [v219 hasLegacyUniqueIdentifier];

  if (v220)
  {
    v221 = MEMORY[0x1E696AD98];
    v222 = [(MRContentItem *)self metadata];
    v223 = [v221 numberWithLongLong:{objc_msgSend(v222, "legacyUniqueIdentifier")}];
    [(NSDictionary *)v5 setObject:v223 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUniqueIdentifier"];
  }

  v224 = [(MRContentItem *)self metadata];
  v225 = [v224 appMetrics];

  if (v225)
  {
    v226 = [(MRContentItem *)self metadata];
    v227 = [v226 appMetrics];
    v228 = [v227 copy];
    [(NSDictionary *)v5 setObject:v228 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAppMetrics"];
  }

  v229 = [(MRContentItem *)self metadata];
  v230 = [v229 collectionInfo];

  if (v230)
  {
    v231 = [(MRContentItem *)self metadata];
    v232 = [v231 collectionInfo];
    v233 = [v232 copy];
    [(NSDictionary *)v5 setObject:v233 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCollectionInfo"];
  }

  v234 = [(MRContentItem *)self metadata];
  v235 = [v234 userInfo];

  if (v235)
  {
    v236 = [(MRContentItem *)self metadata];
    v237 = [v236 userInfo];
    v238 = [v237 copy];
    [(NSDictionary *)v5 setObject:v238 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUserInfo"];
  }

  v239 = [(MRContentItem *)self metadata];
  v240 = [v239 internationalStandardRecordingCode];

  if (v240)
  {
    v241 = [(MRContentItem *)self metadata];
    v242 = [v241 internationalStandardRecordingCode];
    v243 = [v242 copy];
    [(NSDictionary *)v5 setObject:v243 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoInternationalStandardRecordingCode"];
  }

  v244 = [(MRContentItem *)self metadata];
  v245 = [v244 hasExcludeFromSuggestions];

  if (v245)
  {
    v246 = MEMORY[0x1E696AD98];
    v247 = [(MRContentItem *)self metadata];
    v248 = [v246 numberWithBool:{objc_msgSend(v247, "excludeFromSuggestions")}];
    [(NSDictionary *)v5 setObject:v248 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExcludeFromSuggestions"];
  }

  v249 = [(MRContentItem *)self metadata];
  v250 = [v249 collectionInfo];

  if (v250)
  {
    v251 = [v250 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingCollectionInfoKeyIdentifiers"];

    if (v251)
    {
      v299 = v75;
      v305[0] = @"kMRMediaRemoteNowPlayingInfoRadioStationHash";
      v305[1] = @"kMRMediaRemoteNowPlayingInfoRadioStationIdentifier";
      v305[2] = @"kMRMediaRemoteNowPlayingInfoRadioStationStringIdentifier";
      v305[3] = @"kMRMediaRemoteNowPlayingInfoRadioStationName";
      [MEMORY[0x1E695DEC8] arrayWithObjects:v305 count:4];
      v300 = 0u;
      v301 = 0u;
      v302 = 0u;
      v252 = v303 = 0u;
      v253 = [v252 countByEnumeratingWithState:&v300 objects:v304 count:16];
      if (v253)
      {
        v254 = v253;
        v255 = *v301;
        do
        {
          for (i = 0; i != v254; ++i)
          {
            if (*v301 != v255)
            {
              objc_enumerationMutation(v252);
            }

            v257 = *(*(&v300 + 1) + 8 * i);
            v258 = [v251 objectForKeyedSubscript:v257];
            if (v258)
            {
              [(NSDictionary *)v5 setObject:v258 forKeyedSubscript:v257];
            }
          }

          v254 = [v252 countByEnumeratingWithState:&v300 objects:v304 count:16];
        }

        while (v254);
      }

      v75 = v299;
    }
  }

  v259 = [(MRContentItem *)self metadata];
  v260 = [v259 hasMediaType];

  if (v260)
  {
    v261 = [(MRContentItem *)self metadata];
    v262 = [v261 mediaType];

    v263 = [(MRContentItem *)self metadata];
    v264 = [v263 mediaSubType];

    if (v262 == 1)
    {
      v265 = kMRMediaRemoteNowPlayingInfoTypeAudio;
    }

    else
    {
      if (v262 != 2)
      {
        v266 = 0;
LABEL_127:
        v267 = [(MRContentItem *)self metadata];
        v268 = [v267 hasMediaSubType];

        if (!v268)
        {
          goto LABEL_145;
        }

        if (v264 > 3)
        {
          switch(v264)
          {
            case 4:
              v269 = kMRMediaRemoteMediaTypePodcast;
              goto LABEL_143;
            case 5:
              v269 = kMRMediaRemoteMediaTypeAudioBook;
              goto LABEL_143;
            case 6:
              v269 = kMRMediaRemoteMediaTypeITunesU;
              goto LABEL_143;
          }
        }

        else
        {
          if ((v264 - 2) < 2)
          {
            v269 = kMRMediaRemoteNowPlayingInfoTypeVideo;
            goto LABEL_143;
          }

          if (!v264)
          {
            if (v266)
            {
LABEL_146:
              [(NSDictionary *)v5 setObject:v266 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoMediaType"];

              goto LABEL_147;
            }

            v266 = @"kMRMediaRemoteNowPlayingInfoTypeAudio";
LABEL_145:
            if (!v266)
            {
              goto LABEL_147;
            }

            goto LABEL_146;
          }

          if (v264 == 1)
          {
            v269 = kMRMediaRemoteMediaTypeMusic;
LABEL_143:
            v270 = *v269;
            goto LABEL_144;
          }
        }

        v270 = @"kMRMediaRemoteNowPlayingInfoTypeAudio";
LABEL_144:
        v271 = v270;

        v266 = v271;
        goto LABEL_145;
      }

      v265 = kMRMediaRemoteNowPlayingInfoTypeVideo;
    }

    v266 = *v265;
    goto LABEL_127;
  }

LABEL_147:
  v272 = [(MRContentItem *)self availableLanguageOptions];

  if (v272)
  {
    v273 = [(MRContentItem *)self availableLanguageOptions];
    ExternalRepresentation = MRLanguageOptionGroupsCreateExternalRepresentation(v273);

    if (ExternalRepresentation)
    {
      [(NSDictionary *)v5 setObject:ExternalRepresentation forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAvailableLanguageOptionsData"];
    }
  }

  v275 = [(MRContentItem *)self currentLanguageOptions];

  if (v275)
  {
    v276 = [(MRContentItem *)self currentLanguageOptions];
    v277 = MRLanguageOptionsCreateExternalRepresentation(v276);

    if (v277)
    {
      [(NSDictionary *)v5 setObject:v277 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCurrentLanguageOptionsData"];
    }
  }

  v278 = [(MRContentItem *)self metadata];
  v279 = [v278 artworkMIMEType];

  if (v279)
  {
    v280 = [(MRContentItem *)self metadata];
    v281 = [v280 artworkMIMEType];
    [(NSDictionary *)v5 setObject:v281 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkMIMEType"];
  }

  v282 = [(MRContentItem *)self artwork];
  v283 = [v282 imageData];

  if (v283)
  {
    v284 = [(MRContentItem *)self artwork];
    v285 = [v284 imageData];
    [(NSDictionary *)v5 setObject:v285 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkData"];
  }

  v286 = [(MRContentItem *)self artwork];
  v287 = [v286 width];

  if (v287 >= 1)
  {
    v288 = MEMORY[0x1E696AD98];
    v289 = [(MRContentItem *)self artwork];
    v290 = [v288 numberWithInteger:{objc_msgSend(v289, "width")}];
    [(NSDictionary *)v5 setObject:v290 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkDataWidth"];
  }

  v291 = [(MRContentItem *)self artwork];
  v292 = [v291 height];

  if (v292 >= 1)
  {
    v293 = MEMORY[0x1E696AD98];
    v294 = [(MRContentItem *)self artwork];
    v295 = [v293 numberWithInteger:{objc_msgSend(v294, "height")}];
    [(NSDictionary *)v5 setObject:v295 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkDataHeight"];
  }

  v296 = v5;

  v297 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MRContentItem)skeleton
{
  v3 = [MRContentItem alloc];
  v4 = [(MRContentItem *)self identifier];
  v5 = [(MRContentItem *)v3 initWithIdentifier:v4];

  v6 = [(MRContentItem *)self parentIdentifier];
  [(MRContentItem *)v5 setParentIdentifier:v6];

  v7 = [(MRContentItem *)self ancestorIdentifier];
  [(MRContentItem *)v5 setAncestorIdentifier:v7];

  v8 = [(MRContentItem *)self associatedParticipantIdentifier];
  [(MRContentItem *)v5 setAssociatedParticipantIdentifier:v8];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRContentItem *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MRContentItem *)self identifier];
  [v3 setObject:v4 forKeyedSubscript:@"identifier"];

  v5 = [(MRContentItem *)self info];
  [v3 setObject:v5 forKeyedSubscript:@"info"];

  v6 = [(MRContentItem *)self parentIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"parentIdentifier"];

  v7 = [(MRContentItem *)self ancestorIdentifier];
  [v3 setObject:v7 forKeyedSubscript:@"ancestorIdentifier"];

  v8 = [(MRContentItem *)self associatedParticipantIdentifier];
  [v3 setObject:v8 forKeyedSubscript:@"associatedParticipantIdentifier"];

  v9 = [(MRContentItem *)self queueIdentifier];
  [v3 setObject:v9 forKeyedSubscript:@"queueIdentifier"];

  v10 = [(MRContentItem *)self requestIdentifier];
  [v3 setObject:v10 forKeyedSubscript:@"requestIdentifier"];

  v11 = [(MRContentItem *)self metadata];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"metadata"];

  v13 = [(MRContentItem *)self artwork];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"artwork"];

  v15 = [(MRContentItem *)self transcriptAlignments];
  v16 = [v15 mr_map:&__block_literal_global_67_0];
  [v3 setObject:v16 forKeyedSubscript:@"transcriptAlignments"];

  v17 = [(MRContentItem *)self availableLanguageOptions];
  v18 = [v17 mr_map:&__block_literal_global_72_0];
  [v3 setObject:v18 forKeyedSubscript:@"availableLanguageOptions"];

  v19 = [(MRContentItem *)self currentLanguageOptions];
  v20 = [v19 mr_map:&__block_literal_global_77_1];
  [v3 setObject:v20 forKeyedSubscript:@"currentLanguageOptions"];

  v21 = [(MRContentItem *)self sections];
  v22 = [v21 mr_map:&__block_literal_global_82_0];
  [v3 setObject:v22 forKeyedSubscript:@"sections"];

  v23 = [(MRContentItem *)self availableArtworkFormats];
  [v3 setObject:v23 forKeyedSubscript:@"availableArtworkFormats"];

  v24 = [(MRContentItem *)self availableRemoteArtworkFormats];
  [v3 setObject:v24 forKeyedSubscript:@"availableRemoteArtworkFormats"];

  v25 = [(MRContentItem *)self availableAnimatedArtworkFormats];
  [v3 setObject:v25 forKeyedSubscript:@"availableAnimatedArtworkFormats"];

  v26 = [(MRContentItem *)self artworks];
  [v3 setObject:v26 forKeyedSubscript:@"artworks"];

  v27 = [(MRContentItem *)self remoteArtworks];
  [v3 setObject:v27 forKeyedSubscript:@"remoteArtworks"];

  v28 = [(MRContentItem *)self animatedArtworkPreviewFrames];
  [v3 setObject:v28 forKeyedSubscript:@"animatedArtworkPreviewFrames"];

  v29 = [(MRContentItem *)self animatedArtworks];
  [v3 setObject:v29 forKeyedSubscript:@"animatedArtworks"];

  return v3;
}

- (MRContentItem)initWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = MRContentItem;
    v5 = [(MRContentItem *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(MRContentItem *)v5 setIdentifier:v4];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MRContentItem)initWithNowPlayingInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_opt_class() extractedIdentifierFromNowPlayingInfo:v4];
    if (!v5)
    {
      v6 = [MEMORY[0x1E696AFB0] UUID];
      v5 = [v6 UUIDString];
    }

    v7 = [(MRContentItem *)self initWithIdentifier:v5];
    v8 = v7;
    if (v7)
    {
      [(MRContentItem *)v7 setNowPlayingInfo:v4 policy:1 request:0];
    }

    self = v8;

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MRContentItem)initWithProtobuf:(id)a3
{
  v131 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    v7 = [(MRContentItem *)self initWithIdentifier:v6];

    if (v7)
    {
      v8 = [v5 info];
      v9 = [v8 copy];
      info = v7->_info;
      v7->_info = v9;

      v11 = [v5 parentIdentifier];
      v12 = [v11 copy];
      parentIdentifier = v7->_parentIdentifier;
      v7->_parentIdentifier = v12;

      v14 = [v5 ancestorIdentifier];
      v15 = [v14 copy];
      ancestorIdentifier = v7->_ancestorIdentifier;
      v7->_ancestorIdentifier = v15;

      v17 = [v5 associatedParticipantIdentifier];
      v18 = [v17 copy];
      associatedParticipantIdentifier = v7->_associatedParticipantIdentifier;
      v7->_associatedParticipantIdentifier = v18;

      v20 = [v5 queueIdentifier];
      v21 = [v20 copy];
      queueIdentifier = v7->_queueIdentifier;
      v7->_queueIdentifier = v21;

      v23 = [v5 requestIdentifier];
      v24 = [v23 copy];
      requestIdentifier = v7->_requestIdentifier;
      v7->_requestIdentifier = v24;

      v26 = [[MRArtwork alloc] initWithProtobuf:v5];
      artwork = v7->_artwork;
      v7->_artwork = v26;

      if ([v5 hasMetadata])
      {
        v28 = [MRContentItemMetadata alloc];
        v29 = [v5 metadata];
        v30 = [(MRContentItemMetadata *)v28 initWithProtobuf:v29];
        metadata = v7->_metadata;
        v7->_metadata = v30;
      }

      v32 = [v5 transcriptAlignments];
      v33 = [v32 mr_map:&__block_literal_global_70];
      transcriptAlignments = v7->_transcriptAlignments;
      v7->_transcriptAlignments = v33;

      v35 = [v5 availableLanguageOptions];
      v36 = [v35 mr_map:&__block_literal_global_10_3];
      availableLanguageOptions = v7->_availableLanguageOptions;
      v7->_availableLanguageOptions = v36;

      v38 = [v5 currentLanguageOptions];
      v39 = [v38 mr_map:&__block_literal_global_14_1];
      currentLanguageOptions = v7->_currentLanguageOptions;
      v7->_currentLanguageOptions = v39;

      v41 = [v5 sections];
      v42 = [v41 mr_map:&__block_literal_global_18_0];
      sections = v7->_sections;
      v7->_sections = v42;

      v44 = [v5 availableArtworkFormats];
      availableArtworkFormats = v7->_availableArtworkFormats;
      v7->_availableArtworkFormats = v44;

      v46 = [v5 availableRemoteArtworkFormats];
      availableRemoteArtworkFormats = v7->_availableRemoteArtworkFormats;
      v7->_availableRemoteArtworkFormats = v46;

      if (_os_feature_enabled_impl())
      {
        v48 = [v5 availableAnimatedArtworkFormats];
        availableAnimatedArtworkFormats = v7->_availableAnimatedArtworkFormats;
        v7->_availableAnimatedArtworkFormats = v48;
      }

      v106 = v5;
      if ([v5 dataArtworksCount])
      {
        v50 = [MEMORY[0x1E695DF90] dictionary];
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v51 = [v5 dataArtworks];
        v52 = [v51 countByEnumeratingWithState:&v119 objects:v130 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v120;
          do
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v120 != v54)
              {
                objc_enumerationMutation(v51);
              }

              v56 = *(*(&v119 + 1) + 8 * i);
              if ([v56 hasType])
              {
                v57 = [MRDataArtwork alloc];
                v58 = [v56 imageData];
                v59 = [(MRDataArtwork *)v57 initWithImageData:v58];
                v60 = [v56 type];
                [v50 setObject:v59 forKeyedSubscript:v60];
              }

              else
              {
                v58 = _MRLogForCategory(0);
                if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
                {
                  identifier = v7->_identifier;
                  *buf = 138412546;
                  v127 = v56;
                  v128 = 2112;
                  v129 = identifier;
                  _os_log_fault_impl(&dword_1A2860000, v58, OS_LOG_TYPE_FAULT, "FAULT: No type for artwork protobuf %@ in content item %@", buf, 0x16u);
                }
              }
            }

            v53 = [v51 countByEnumeratingWithState:&v119 objects:v130 count:16];
          }

          while (v53);
        }

        v62 = [v50 copy];
        artworks = v7->_artworks;
        v7->_artworks = v62;

        v5 = v106;
      }

      if ([v5 remoteArtworksCount])
      {
        v64 = [MEMORY[0x1E695DF90] dictionary];
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v65 = [v5 remoteArtworks];
        v66 = [v65 countByEnumeratingWithState:&v115 objects:v125 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v116;
          do
          {
            for (j = 0; j != v67; ++j)
            {
              if (*v116 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v70 = *(*(&v115 + 1) + 8 * j);
              if ([v70 hasType])
              {
                v71 = [[MRRemoteArtwork alloc] initWithProtobuf:v70];
                v72 = [v70 type];
                [v64 setObject:v71 forKeyedSubscript:v72];
              }

              else
              {
                v71 = _MRLogForCategory(0);
                if (os_log_type_enabled(&v71->super, OS_LOG_TYPE_FAULT))
                {
                  v73 = v7->_identifier;
                  *buf = 138412546;
                  v127 = v70;
                  v128 = 2112;
                  v129 = v73;
                  _os_log_fault_impl(&dword_1A2860000, &v71->super, OS_LOG_TYPE_FAULT, "FAULT: No type for artwork protobuf %@ in content item %@", buf, 0x16u);
                }
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v115 objects:v125 count:16];
          }

          while (v67);
        }

        v74 = [v64 copy];
        remoteArtworks = v7->_remoteArtworks;
        v7->_remoteArtworks = v74;

        v5 = v106;
      }

      if (_os_feature_enabled_impl())
      {
        if ([v5 animatedArtworkPreviewFramesCount])
        {
          v76 = [MEMORY[0x1E695DF90] dictionary];
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          v77 = [v5 animatedArtworkPreviewFrames];
          v78 = [v77 countByEnumeratingWithState:&v111 objects:v124 count:16];
          if (v78)
          {
            v79 = v78;
            v80 = *v112;
            do
            {
              for (k = 0; k != v79; ++k)
              {
                if (*v112 != v80)
                {
                  objc_enumerationMutation(v77);
                }

                v82 = *(*(&v111 + 1) + 8 * k);
                if ([v82 hasType])
                {
                  v83 = [MRDataArtwork alloc];
                  v84 = [v82 imageData];
                  v85 = [(MRDataArtwork *)v83 initWithImageData:v84];
                  v86 = [v82 type];
                  [v76 setObject:v85 forKeyedSubscript:v86];
                }

                else
                {
                  v84 = _MRLogForCategory(0);
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
                  {
                    v87 = v7->_identifier;
                    *buf = 138412546;
                    v127 = v82;
                    v128 = 2112;
                    v129 = v87;
                    _os_log_fault_impl(&dword_1A2860000, v84, OS_LOG_TYPE_FAULT, "FAULT: No type for animated artwork preview frame protobuf %@ in content item %@", buf, 0x16u);
                  }
                }
              }

              v79 = [v77 countByEnumeratingWithState:&v111 objects:v124 count:16];
            }

            while (v79);
          }

          v88 = [v76 copy];
          animatedArtworkPreviewFrames = v7->_animatedArtworkPreviewFrames;
          v7->_animatedArtworkPreviewFrames = v88;

          v5 = v106;
        }

        if ([v5 animatedArtworksCount])
        {
          v90 = [MEMORY[0x1E695DF90] dictionary];
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v91 = [v5 animatedArtworks];
          v92 = [v91 countByEnumeratingWithState:&v107 objects:v123 count:16];
          if (v92)
          {
            v93 = v92;
            v94 = *v108;
            do
            {
              for (m = 0; m != v93; ++m)
              {
                if (*v108 != v94)
                {
                  objc_enumerationMutation(v91);
                }

                v96 = *(*(&v107 + 1) + 8 * m);
                if ([v96 hasType])
                {
                  v97 = [[MRAnimatedArtwork alloc] initWithProtobuf:v96];
                  if (v97)
                  {
                    v98 = [v96 type];
                    [v90 setObject:v97 forKeyedSubscript:v98];
                  }

                  else
                  {
                    v98 = _MRLogForCategory(0);
                    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                    {
                      v100 = v7->_identifier;
                      *buf = 138412546;
                      v127 = v96;
                      v128 = 2112;
                      v129 = v100;
                      _os_log_error_impl(&dword_1A2860000, v98, OS_LOG_TYPE_ERROR, "Could not build animated artwork from protobuf %@ in content item %@", buf, 0x16u);
                    }
                  }
                }

                else
                {
                  v97 = _MRLogForCategory(0);
                  if (os_log_type_enabled(&v97->super, OS_LOG_TYPE_FAULT))
                  {
                    v99 = v7->_identifier;
                    *buf = 138412546;
                    v127 = v96;
                    v128 = 2112;
                    v129 = v99;
                    _os_log_fault_impl(&dword_1A2860000, &v97->super, OS_LOG_TYPE_FAULT, "FAULT: No type for animated artwork protobuf %@ in content item %@", buf, 0x16u);
                  }
                }
              }

              v93 = [v91 countByEnumeratingWithState:&v107 objects:v123 count:16];
            }

            while (v93);
          }

          v101 = [v90 copy];
          animatedArtworks = v7->_animatedArtworks;
          v7->_animatedArtworks = v101;

          v5 = v106;
        }
      }
    }

    self = v7;
    v103 = self;
  }

  else
  {
    v103 = 0;
  }

  v104 = *MEMORY[0x1E69E9840];
  return v103;
}

MRTranscriptAlignment *__34__MRContentItem_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRTranscriptAlignment alloc] initWithProtobuf:v2];

  return v3;
}

MRLanguageOptionGroup *__34__MRContentItem_initWithProtobuf___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRLanguageOptionGroup alloc] initWithProtobuf:v2];

  return v3;
}

MRLanguageOption *__34__MRContentItem_initWithProtobuf___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRLanguageOption alloc] initWithProtobuf:v2];

  return v3;
}

MRContentItem *__34__MRContentItem_initWithProtobuf___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRContentItem alloc] initWithProtobuf:v2];

  return v3;
}

- (MRContentItem)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRContentItemProtobuf alloc] initWithData:v4];

    self = [(MRContentItem *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)protobufWithEncoding:(int64_t)a3
{
  v107 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(_MRContentItemProtobuf);
  v6 = [(MRContentItem *)self artwork];
  -[_MRContentItemProtobuf setArtworkDataWidth:](v5, "setArtworkDataWidth:", [v6 width]);

  v7 = [(MRContentItem *)self artwork];
  -[_MRContentItemProtobuf setHasArtworkDataWidth:](v5, "setHasArtworkDataWidth:", [v7 width] > 0);

  v8 = [(MRContentItem *)self artwork];
  -[_MRContentItemProtobuf setArtworkDataHeight:](v5, "setArtworkDataHeight:", [v8 height]);

  v9 = [(MRContentItem *)self artwork];
  -[_MRContentItemProtobuf setHasArtworkDataHeight:](v5, "setHasArtworkDataHeight:", [v9 height] > 0);

  v10 = [(MRContentItem *)self identifier];
  [(_MRContentItemProtobuf *)v5 setIdentifier:v10];

  v11 = [(MRContentItem *)self artwork];
  v12 = [v11 imageData];
  [(_MRContentItemProtobuf *)v5 setArtworkData:v12];

  v13 = [(MRContentItem *)self info];
  [(_MRContentItemProtobuf *)v5 setInfo:v13];

  v14 = [(MRContentItem *)self parentIdentifier];
  [(_MRContentItemProtobuf *)v5 setParentIdentifier:v14];

  v15 = [(MRContentItem *)self ancestorIdentifier];
  [(_MRContentItemProtobuf *)v5 setAncestorIdentifier:v15];

  v16 = [(MRContentItem *)self associatedParticipantIdentifier];
  [(_MRContentItemProtobuf *)v5 setAssociatedParticipantIdentifier:v16];

  v17 = [(MRContentItem *)self queueIdentifier];
  [(_MRContentItemProtobuf *)v5 setQueueIdentifier:v17];

  v18 = [(MRContentItem *)self requestIdentifier];
  [(_MRContentItemProtobuf *)v5 setRequestIdentifier:v18];

  v19 = [(MRContentItem *)self metadata];
  v20 = [v19 protobufWithEncoding:a3];
  [(_MRContentItemProtobuf *)v5 setMetadata:v20];

  v21 = [(MRContentItem *)self transcriptAlignments];
  v22 = [v21 mr_map:&__block_literal_global_29_1];
  v23 = [v22 mutableCopy];
  [(_MRContentItemProtobuf *)v5 setTranscriptAlignments:v23];

  v24 = [(MRContentItem *)self availableLanguageOptions];
  v25 = [v24 mr_map:&__block_literal_global_32_1];
  v26 = [v25 mutableCopy];
  [(_MRContentItemProtobuf *)v5 setAvailableLanguageOptions:v26];

  v27 = [(MRContentItem *)self currentLanguageOptions];
  v28 = [v27 mr_map:&__block_literal_global_35];
  v29 = [v28 mutableCopy];
  [(_MRContentItemProtobuf *)v5 setCurrentLanguageOptions:v29];

  v30 = [(MRContentItem *)self sections];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __38__MRContentItem_protobufWithEncoding___block_invoke_4;
  v102[3] = &__block_descriptor_40_e23__16__0__MRContentItem_8l;
  v102[4] = a3;
  v31 = [v30 mr_map:v102];
  v32 = [v31 mutableCopy];
  [(_MRContentItemProtobuf *)v5 setSections:v32];

  v33 = [(MRContentItem *)self availableArtworkFormats];
  v34 = [v33 mutableCopy];
  [(_MRContentItemProtobuf *)v5 setAvailableArtworkFormats:v34];

  v35 = [(MRContentItem *)self availableRemoteArtworkFormats];
  v36 = [v35 mutableCopy];
  v85 = v5;
  [(_MRContentItemProtobuf *)v5 setAvailableRemoteArtworkFormats:v36];

  if (_os_feature_enabled_impl())
  {
    v37 = [(MRContentItem *)self availableAnimatedArtworkFormats];
    v38 = [v37 mutableCopy];
    [(_MRContentItemProtobuf *)v5 setAvailableAnimatedArtworkFormats:v38];
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v39 = self;
  v40 = [(MRContentItem *)self artworks];
  v41 = [v40 countByEnumeratingWithState:&v98 objects:v106 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v99;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v99 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v98 + 1) + 8 * i);
        v46 = objc_alloc_init(_MRDataArtworkProtobuf);
        [(_MRDataArtworkProtobuf *)v46 setType:v45];
        v47 = [(MRContentItem *)v39 artworks];
        v48 = [v47 objectForKeyedSubscript:v45];
        v49 = [v48 imageData];
        [(_MRDataArtworkProtobuf *)v46 setImageData:v49];

        [(_MRContentItemProtobuf *)v85 addDataArtworks:v46];
      }

      v42 = [v40 countByEnumeratingWithState:&v98 objects:v106 count:16];
    }

    while (v42);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v50 = v39;
  obj = [(MRContentItem *)v39 remoteArtworks];
  v51 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v95;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v95 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v94 + 1) + 8 * j);
        v56 = objc_alloc_init(_MRRemoteArtworkProtobuf);
        [(_MRRemoteArtworkProtobuf *)v56 setType:v55];
        v57 = [(MRContentItem *)v50 remoteArtworks];
        v58 = [v57 objectForKeyedSubscript:v55];
        v59 = [v58 artworkURLString];
        [(_MRRemoteArtworkProtobuf *)v56 setArtworkURLString:v59];

        v50 = v39;
        v60 = [(MRContentItem *)v39 remoteArtworks];
        v61 = [v60 objectForKeyedSubscript:v55];
        v62 = [v61 artworkURLTemplateData];
        [(_MRRemoteArtworkProtobuf *)v56 setArtworkURLTemplateData:v62];

        [(_MRContentItemProtobuf *)v85 addRemoteArtworks:v56];
      }

      v52 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
    }

    while (v52);
  }

  if (_os_feature_enabled_impl())
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v63 = [(MRContentItem *)v50 animatedArtworkPreviewFrames];
    v64 = [v63 countByEnumeratingWithState:&v90 objects:v104 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v91;
      do
      {
        for (k = 0; k != v65; ++k)
        {
          if (*v91 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = *(*(&v90 + 1) + 8 * k);
          v69 = objc_alloc_init(_MRDataArtworkProtobuf);
          [(_MRDataArtworkProtobuf *)v69 setType:v68];
          v70 = [(MRContentItem *)v39 animatedArtworkPreviewFrames];
          v71 = [v70 objectForKeyedSubscript:v68];
          v72 = [v71 imageData];
          [(_MRDataArtworkProtobuf *)v69 setImageData:v72];

          [(_MRContentItemProtobuf *)v85 addAnimatedArtworkPreviewFrames:v69];
        }

        v65 = [v63 countByEnumeratingWithState:&v90 objects:v104 count:16];
      }

      while (v65);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v73 = [(MRContentItem *)v39 animatedArtworks];
    v74 = [v73 countByEnumeratingWithState:&v86 objects:v103 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v87;
      do
      {
        for (m = 0; m != v75; ++m)
        {
          if (*v87 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = *(*(&v86 + 1) + 8 * m);
          v79 = [(MRContentItem *)v39 animatedArtworks];
          v80 = [v79 objectForKeyedSubscript:v78];
          v81 = [v80 protobufWithFormat:v78];

          if (v81)
          {
            [(_MRContentItemProtobuf *)v85 addAnimatedArtworks:v81];
          }
        }

        v75 = [v73 countByEnumeratingWithState:&v86 objects:v103 count:16];
      }

      while (v75);
    }
  }

  v82 = *MEMORY[0x1E69E9840];

  return v85;
}

- (NSData)data
{
  v2 = [(MRContentItem *)self protobufWithEncoding:0];
  v3 = [v2 data];

  return v3;
}

- (void)setNowPlayingInfo:(id)a3 policy:(unsigned __int8)a4 request:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 mutableCopy];
  if (v10)
  {
    v198 = v8;
    v11 = [(MRContentItem *)self metadata];

    if (!v11)
    {
      v12 = objc_alloc_init(MRContentItemMetadata);
      [(MRContentItem *)self setMetadata:v12];
    }

    v195 = v6;
    if (!v6)
    {
      v13 = [(MRContentItem *)self metadata];
      v14 = [v13 nowPlayingInfo];
      v15 = [v14 copy];

      v214[0] = MEMORY[0x1E69E9820];
      v214[1] = 3221225472;
      v214[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke;
      v214[3] = &unk_1E769EC90;
      v215 = v10;
      [v15 enumerateKeysAndObjectsUsingBlock:v214];
    }

    if ((!v9 || [v9 includeMetadata]) && (v213[0] = MEMORY[0x1E69E9820], v213[1] = 3221225472, v213[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_2, v213[3] = &unk_1E76A0C78, v213[4] = self, _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoAlbum", v213), !v9) || objc_msgSend(v9, "includeMetadata"))
    {
      v212[0] = MEMORY[0x1E69E9820];
      v212[1] = 3221225472;
      v212[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_3;
      v212[3] = &unk_1E76A0C78;
      v212[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoArtist", v212);
      if (!v9)
      {
        goto LABEL_261;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_261:
      v16 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAssetURL"];
      if (v16)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v18 = v16;
        if ((isKindOfClass & 1) == 0)
        {
          v18 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v16];
        }

        v19 = [(MRContentItem *)self metadata];
        [v19 setAssetURL:v18];

        if ((isKindOfClass & 1) == 0)
        {
        }
      }

      if (!v9)
      {
        goto LABEL_259;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_259:
      v211[0] = MEMORY[0x1E69E9820];
      v211[1] = 3221225472;
      v211[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_4;
      v211[3] = &unk_1E76A0C78;
      v211[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoComposer", v211);
      if (!v9)
      {
        goto LABEL_257;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_257:
      v20 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDiscNumber"];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 longValue];
        v23 = [(MRContentItem *)self metadata];
        [v23 setDiscNumber:v22];
      }

      if (!v9)
      {
        goto LABEL_255;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_255:
      v210[0] = MEMORY[0x1E69E9820];
      v210[1] = 3221225472;
      v210[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_5;
      v210[3] = &unk_1E76A0C78;
      v210[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoGenre", v210);
      if (!v9)
      {
        goto LABEL_253;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_253:
      v24 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackRate"];
      v25 = v24;
      if (v24)
      {
        [v24 floatValue];
        v27 = v26;
        v28 = [(MRContentItem *)self metadata];
        LODWORD(v29) = v27;
        [v28 setPlaybackRate:v29];
      }

      if (!v9)
      {
        goto LABEL_251;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_251:
      v30 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCurrentPlaybackDate"];
      if (v30)
      {
        v31 = [(MRContentItem *)self metadata];
        [v31 setCurrentPlaybackDate:v30];
      }

      if (!v9)
      {
        goto LABEL_249;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_249:
      v32 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAlwaysLive"];
      v33 = v32;
      if (v32)
      {
        v34 = [v32 BOOLValue];
        v35 = [(MRContentItem *)self metadata];
        [v35 setAlwaysLive:v34];
      }

      if (!v9)
      {
        goto LABEL_39;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_39:
      v36 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInTransition"];
      v37 = v36;
      if (v36)
      {
        v38 = [v36 BOOLValue];
        v39 = [(MRContentItem *)self metadata];
        [v39 setInTransition:v38];
      }
    }

    v40 = [(MRContentItem *)self metadata];
    v41 = [v40 isAlwaysLive];

    if ((v41 & 1) == 0)
    {
      if (!v9 || [v9 includeMetadata])
      {
        v42 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDuration"];
        v43 = v42;
        if (v42)
        {
          [v42 doubleValue];
          v45 = v44;
          v46 = [(MRContentItem *)self metadata];
          [v46 setDuration:v45];
        }

        if (!v9)
        {
          goto LABEL_49;
        }
      }

      if ([v9 includeMetadata])
      {
LABEL_49:
        v47 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoElapsedTime"];
        v48 = v47;
        if (v47)
        {
          [v47 doubleValue];
          v50 = v49;
          v51 = [(MRContentItem *)self metadata];
          [v51 setElapsedTime:v50];
        }
      }
    }

    v52 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
    v53 = v52;
    if (v52)
    {
      v54 = MEMORY[0x1E696AD98];
      [v52 timeIntervalSinceReferenceDate];
      v55 = [v54 numberWithDouble:?];
      [v10 setObject:v55 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
    }

    if (!v9 || [v9 includeMetadata])
    {
      v56 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
      v57 = v56;
      if (v56)
      {
        [v56 doubleValue];
        v59 = v58;
        v60 = [(MRContentItem *)self metadata];
        [v60 setElapsedTimeTimestamp:v59];
      }
    }

    v61 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoStartTime"];
    v62 = v61;
    if (v61)
    {
      v63 = MEMORY[0x1E696AD98];
      [v61 timeIntervalSinceReferenceDate];
      v64 = [v63 numberWithDouble:?];
      [v10 setObject:v64 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoStartTime"];
    }

    if (!v9 || [v9 includeMetadata])
    {
      v65 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoStartTime"];
      v66 = v65;
      if (v65)
      {
        [v65 doubleValue];
        v68 = v67;
        v69 = [(MRContentItem *)self metadata];
        [v69 setStartTime:v68];
      }

      if (!v9)
      {
        goto LABEL_290;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_290:
      v209[0] = MEMORY[0x1E69E9820];
      v209[1] = 3221225472;
      v209[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_6;
      v209[3] = &unk_1E76A0C78;
      v209[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoTitle", v209);
      if (!v9)
      {
        goto LABEL_289;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_289:
      v70 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalDiscCount"];
      v71 = v70;
      if (v70)
      {
        v72 = [v70 longValue];
        v73 = [(MRContentItem *)self metadata];
        [v73 setTotalDiscCount:v72];
      }

      if (!v9)
      {
        goto LABEL_288;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_288:
      v74 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalTrackCount"];
      v75 = v74;
      if (v74)
      {
        v76 = [v74 longValue];
        v77 = [(MRContentItem *)self metadata];
        [v77 setTotalTrackCount:v76];
      }

      if (!v9)
      {
        goto LABEL_287;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_287:
      v78 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTrackNumber"];
      v79 = v78;
      if (v78)
      {
        v80 = [v78 longValue];
        v81 = [(MRContentItem *)self metadata];
        [v81 setTrackNumber:v80];
      }

      if (!v9)
      {
        goto LABEL_286;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_286:
      v208[0] = MEMORY[0x1E69E9820];
      v208[1] = 3221225472;
      v208[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_7;
      v208[3] = &unk_1E76A0C78;
      v208[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoCollectionIdentifier", v208);
      if (!v9)
      {
        goto LABEL_285;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_285:
      v207[0] = MEMORY[0x1E69E9820];
      v207[1] = 3221225472;
      v207[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_8;
      v207[3] = &unk_1E76A0C78;
      v207[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoExternalContentIdentifier", v207);
      if (!v9)
      {
        goto LABEL_284;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_284:
      v206[0] = MEMORY[0x1E69E9820];
      v206[1] = 3221225472;
      v206[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_9;
      v206[3] = &unk_1E76A0C78;
      v206[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoInternationalStandardRecordingCode", v206);
      if (!v9)
      {
        goto LABEL_283;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_283:
      v82 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExcludeFromSuggestions"];
      v83 = v82;
      if (v82)
      {
        v84 = [v82 BOOLValue];
        v85 = [(MRContentItem *)self metadata];
        [v85 setExcludeFromSuggestions:v84];
      }

      if (!v9)
      {
        goto LABEL_282;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_282:
      v205[0] = MEMORY[0x1E69E9820];
      v205[1] = 3221225472;
      v205[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_10;
      v205[3] = &unk_1E76A0C78;
      v205[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoExternalProfileIdentifier", v205);
      if (!v9)
      {
        goto LABEL_281;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_281:
      v204[0] = MEMORY[0x1E69E9820];
      v204[1] = 3221225472;
      v204[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_11;
      v204[3] = &unk_1E76A0C78;
      v204[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoServiceIdentifier", v204);
      if (!v9)
      {
        goto LABEL_280;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_280:
      v203[0] = MEMORY[0x1E69E9820];
      v203[1] = 3221225472;
      v203[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_12;
      v203[3] = &unk_1E76A0C78;
      v203[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoBrandIdentifier", v203);
      if (!v9)
      {
        goto LABEL_279;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_279:
      v86 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackProgress"];
      v87 = v86;
      if (v86)
      {
        [v86 floatValue];
        v89 = v88;
        v90 = [(MRContentItem *)self metadata];
        LODWORD(v91) = v89;
        [v90 setPlaybackProgress:v91];
      }

      if (!v9)
      {
        goto LABEL_278;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_278:
      v92 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsExplicitTrack"];
      v93 = v92;
      if (v92)
      {
        v94 = [v92 BOOLValue];
        v95 = [(MRContentItem *)self metadata];
        [v95 setExplicitItem:v94];
      }

      if (!v9)
      {
        goto LABEL_277;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_277:
      v96 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSharable"];
      v97 = v96;
      if (v96)
      {
        v98 = [v96 BOOLValue];
        v99 = [(MRContentItem *)self metadata];
        [v99 setSharable:v98];
      }

      if (!v9)
      {
        goto LABEL_276;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_276:
      v100 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsLiked"];
      v101 = v100;
      if (v100)
      {
        v102 = [v100 BOOLValue];
        v103 = [(MRContentItem *)self metadata];
        [v103 setLiked:v102];
      }

      if (!v9)
      {
        goto LABEL_275;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_275:
      v104 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInWishList"];
      v105 = v104;
      if (v104)
      {
        v106 = [v104 BOOLValue];
        v107 = [(MRContentItem *)self metadata];
        [v107 setInWishList:v106];
      }

      if (!v9)
      {
        goto LABEL_274;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_274:
      v108 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationIdentifier"];
      v109 = v108;
      if (v108)
      {
        v110 = [v108 longLongValue];
        v111 = [(MRContentItem *)self metadata];
        [v111 setRadioStationIdentifier:v110];
      }

      if (!v9)
      {
        goto LABEL_273;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_273:
      v202[0] = MEMORY[0x1E69E9820];
      v202[1] = 3221225472;
      v202[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_13;
      v202[3] = &unk_1E76A0C78;
      v202[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoRadioStationName", v202);
      if (!v9)
      {
        goto LABEL_272;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_272:
      v201[0] = MEMORY[0x1E69E9820];
      v201[1] = 3221225472;
      v201[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_14;
      v201[3] = &unk_1E76A0C78;
      v201[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoRadioStationStringIdentifier", v201);
      if (!v9)
      {
        goto LABEL_271;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_271:
      v112 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier"];
      v113 = v112;
      if (v112)
      {
        v114 = [v112 longLongValue];
        v115 = [(MRContentItem *)self metadata];
        [v115 setITunesStoreIdentifier:v114];
      }

      if (!v9)
      {
        goto LABEL_270;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_270:
      v116 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier"];
      v117 = v116;
      if (v116)
      {
        v118 = [v116 longLongValue];
        v119 = [(MRContentItem *)self metadata];
        [v119 setITunesStoreSubscriptionIdentifier:v118];
      }

      if (!v9)
      {
        goto LABEL_269;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_269:
      v120 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtistiTunesStoreAdamIdentifier"];
      v121 = v120;
      if (v120)
      {
        v122 = [v120 longLongValue];
        v123 = [(MRContentItem *)self metadata];
        [v123 setITunesStoreArtistIdentifier:v122];
      }

      if (!v9)
      {
        goto LABEL_268;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_268:
      v124 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier"];
      v125 = v124;
      if (v124)
      {
        v126 = [v124 longLongValue];
        v127 = [(MRContentItem *)self metadata];
        [v127 setITunesStoreAlbumIdentifier:v126];
      }

      if (!v9)
      {
        goto LABEL_267;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_267:
      v128 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPurchaseInfoData"];
      if (v128)
      {
        v129 = [(MRContentItem *)self metadata];
        [v129 setPurchaseInfoData:v128];
      }

      if (!v9)
      {
        goto LABEL_266;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_266:
      v130 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate"];
      v131 = v130;
      if (v130)
      {
        [v130 floatValue];
        v133 = v132;
        v134 = [(MRContentItem *)self metadata];
        LODWORD(v135) = v133;
        [v134 setDefaultPlaybackRate:v135];
      }

      if (!v9)
      {
        goto LABEL_265;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_265:
      v136 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadState"];
      v137 = v136;
      if (v136)
      {
        v138 = [v136 intValue];
        v139 = [(MRContentItem *)self metadata];
        [v139 setDownloadState:v138];
      }

      if (!v9)
      {
        goto LABEL_264;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_264:
      v140 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadProgress"];
      v141 = v140;
      if (v140)
      {
        [v140 floatValue];
        v143 = v142;
        v144 = [(MRContentItem *)self metadata];
        LODWORD(v145) = v143;
        [v144 setDownloadProgress:v145];
      }

      if (!v9)
      {
        goto LABEL_263;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_263:
      v146 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAppMetrics"];
      if (v146)
      {
        v147 = [(MRContentItem *)self metadata];
        [v147 setAppMetrics:v146];
      }

      if (!v9)
      {
        goto LABEL_262;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_262:
      v148 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCollectionInfo"];
      if (v148)
      {
        v149 = [(MRContentItem *)self metadata];
        [v149 setCollectionInfo:v148];
      }

      if (!v9)
      {
        goto LABEL_260;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_260:
      v200[0] = MEMORY[0x1E69E9820];
      v200[1] = 3221225472;
      v200[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_15;
      v200[3] = &unk_1E76A0C78;
      v200[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoArtworkMIMEType", v200);
      if (!v9)
      {
        goto LABEL_258;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_258:
      v150 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAdvertisement"];
      v151 = v150;
      if (v150)
      {
        v152 = [v150 BOOLValue];
        v153 = [(MRContentItem *)self metadata];
        [v153 setAdvertisement:v152];
      }

      if (!v9)
      {
        goto LABEL_256;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_256:
      v154 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSteerable"];
      v155 = v154;
      if (v154)
      {
        v156 = [v154 BOOLValue];
        v157 = [(MRContentItem *)self metadata];
        [v157 setSteerable:v156];
      }

      if (!v9)
      {
        goto LABEL_254;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_254:
      v199[0] = MEMORY[0x1E69E9820];
      v199[1] = 3221225472;
      v199[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_16;
      v199[3] = &unk_1E76A0C78;
      v199[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoArtworkIdentifier", v199);
      if (!v9)
      {
        goto LABEL_252;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_252:
      v158 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkURL"];
      if (v158)
      {
        v159 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v158];
        v160 = [(MRContentItem *)self metadata];
        [v160 setArtworkURL:v159];
      }

      if (!v9)
      {
        goto LABEL_250;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_250:
      v161 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUniqueIdentifier"];
      v162 = v161;
      if (v161)
      {
        v163 = [v161 longLongValue];
        v164 = [(MRContentItem *)self metadata];
        [v164 setLegacyUniqueIdentifier:v163];
      }

      if (!v9)
      {
        goto LABEL_185;
      }
    }

    if ([v9 includeMetadata])
    {
LABEL_185:
      v165 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUserInfo"];
      if (v165)
      {
        v166 = [(MRContentItem *)self metadata];
        [v166 setUserInfo:v165];
      }
    }

    v196 = v62;
    v197 = v53;
    v167 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoMediaType"];
    v168 = v167;
    if (!v167)
    {
LABEL_199:
      v177 = [v10 objectForKeyedSubscript:?];
      if ((!v9 || [v9 includeLanguageOptions]) && v177)
      {
        v178 = MRLanguageOptionsCreateFromExternalRepresentation(v177);
        if (v178)
        {
          [(MRContentItem *)self setCurrentLanguageOptions:v178];
          v179 = [(MRContentItem *)self metadata];
          [v179 setLanguageOptionsAvailable:1];
        }
      }

      v180 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAvailableLanguageOptionsData"];
      v181 = v180;
      if (v9)
      {
        if (![v9 includeLanguageOptions] || !v181)
        {

          goto LABEL_213;
        }
      }

      else if (!v180)
      {
        goto LABEL_214;
      }

      v182 = MRLanguageOptionGroupsCreateFromExternalRepresentation(v181);
      if (v182)
      {
        [(MRContentItem *)self setAvailableLanguageOptions:v182];
        v183 = [(MRContentItem *)self metadata];
        [v183 setLanguageOptionsAvailable:1];
      }

      if (v9)
      {
LABEL_213:
        if (![v9 includeArtwork])
        {
          goto LABEL_230;
        }
      }

LABEL_214:
      if (v195)
      {
        v184 = 0;
      }

      else
      {
        v184 = [(MRContentItem *)self artwork];
      }

      v185 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkData"];
      if (v185)
      {
        if (!v184)
        {
          v184 = objc_alloc_init(MRArtwork);
        }

        [(MRArtwork *)v184 setImageData:v185];
      }

      v186 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkDataHeight"];
      if (v186)
      {
        if (!v184)
        {
          v184 = objc_alloc_init(MRArtwork);
        }

        -[MRArtwork setHeight:](v184, "setHeight:", [v186 longValue]);
      }

      v187 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkDataWidth"];
      if (v187)
      {
        if (!v184)
        {
          v184 = objc_alloc_init(MRArtwork);
        }

        -[MRArtwork setWidth:](v184, "setWidth:", [v187 longValue]);
      }

      [(MRContentItem *)self setArtwork:v184];

LABEL_230:
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoContentItemIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAlbum"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtist"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAssetURL"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoComposer"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDiscNumber"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoGenre"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackRate"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCurrentPlaybackDate"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAlwaysLive"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInTransition"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDuration"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoElapsedTime"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoStartTime"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTitle"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalDiscCount"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalTrackCount"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTrackNumber"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCollectionIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExternalContentIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoInternationalStandardRecordingCode"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExcludeFromSuggestions"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExternalProfileIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoServiceIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoBrandIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackProgress"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsExplicitTrack"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSharable"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsLiked"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInWishList"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationName"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationStringIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtistiTunesStoreAdamIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPurchaseInfoData"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadState"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadProgress"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAppMetrics"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCollectionInfo"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkMIMEType"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAdvertisement"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSteerable"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkURL"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUniqueIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUserInfo"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCurrentLanguageOptionsData"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAvailableLanguageOptionsData"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkData"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoSquareAnimatedArtwork"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoSquareAnimatedArtworkIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTallAnimatedArtwork"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTallAnimatedArtworkIdentifier"];
      v188 = [(MRContentItem *)self metadata];
      v189 = [v188 nowPlayingInfo];
      v190 = v189;
      if (v189 == v10)
      {
      }

      else
      {
        v191 = [(MRContentItem *)self metadata];
        v192 = [v191 nowPlayingInfo];
        v193 = [v192 isEqualToDictionary:v10];

        if (v193)
        {
LABEL_235:

          v8 = v198;
          goto LABEL_236;
        }

        v188 = [(MRContentItem *)self metadata];
        [v188 setNowPlayingInfo:v10];
      }

      goto LABEL_235;
    }

    if ([v167 isEqualToString:@"kMRMediaRemoteNowPlayingInfoTypeAudio"])
    {
      v169 = 0;
    }

    else
    {
      if ([v168 isEqualToString:@"kMRMediaRemoteNowPlayingInfoTypeVideo"])
      {
        v169 = 0;
        v170 = 2;
        goto LABEL_194;
      }

      if (([v168 isEqualToString:@"MRMediaRemoteMediaTypeMusic"] & 1) == 0)
      {
        if ([v168 isEqualToString:@"MRMediaRemoteMediaTypePodcast"])
        {
          v170 = 1;
          v169 = 4;
        }

        else if ([v168 isEqualToString:@"MRMediaRemoteMediaTypeAudioBook"])
        {
          v170 = 1;
          v169 = 5;
        }

        else
        {
          v194 = [v168 isEqualToString:@"MRMediaRemoteMediaTypeITunesU"];
          if (v194)
          {
            v169 = 6;
          }

          else
          {
            v169 = 0;
          }

          v170 = v194;
        }

        goto LABEL_194;
      }

      v169 = 1;
    }

    v170 = 1;
LABEL_194:
    v171 = [(MRContentItem *)self metadata];
    v172 = [v171 hasMediaType];

    if ((v172 & 1) == 0)
    {
      v173 = [(MRContentItem *)self metadata];
      [v173 setMediaType:v170];
    }

    v174 = [(MRContentItem *)self metadata];
    v175 = [v174 hasMediaSubType];

    if ((v175 & 1) == 0)
    {
      v176 = [(MRContentItem *)self metadata];
      [v176 setMediaSubType:v169];
    }

    [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoMediaType"];
    goto LABEL_199;
  }

LABEL_236:
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setAlbumName:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setTrackArtistName:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setComposer:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setGenre:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setTitle:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setCollectionIdentifier:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setContentIdentifier:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setInternationalStandardRecordingCode:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setProfileIdentifier:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setServiceIdentifier:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setBrandIdentifier:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setRadioStationName:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setRadioStationString:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setArtworkMIMEType:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setArtworkIdentifier:v3];
}

- (void)mergeFrom:(id)a3
{
  v123 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = [v4 identifier];
    [(MRContentItem *)self setIdentifier:v6];
  }

  v7 = [(MRContentItem *)self metadata];

  v8 = [v4 metadata];
  v9 = v8;
  if (v7)
  {

    if (!v9)
    {
      goto LABEL_8;
    }

    v9 = [(MRContentItem *)self metadata];
    v10 = [v4 metadata];
    [v9 mergeFrom:v10];
  }

  else
  {
    [(MRContentItem *)self setMetadata:v8];
  }

LABEL_8:
  v11 = [v4 info];

  if (v11)
  {
    v12 = [v4 info];
    [(MRContentItem *)self setInfo:v12];
  }

  v13 = [v4 transcriptAlignments];

  if (v13)
  {
    v14 = [v4 transcriptAlignments];
    [(MRContentItem *)self setTranscriptAlignments:v14];
  }

  v15 = [v4 parentIdentifier];

  if (v15)
  {
    v16 = [v4 parentIdentifier];
    [(MRContentItem *)self setParentIdentifier:v16];
  }

  v17 = [v4 ancestorIdentifier];

  if (v17)
  {
    v18 = [v4 ancestorIdentifier];
    [(MRContentItem *)self setAncestorIdentifier:v18];
  }

  v19 = [v4 associatedParticipantIdentifier];

  if (v19)
  {
    v20 = [v4 associatedParticipantIdentifier];
    [(MRContentItem *)self setAssociatedParticipantIdentifier:v20];
  }

  v21 = [v4 queueIdentifier];

  if (v21)
  {
    v22 = [v4 queueIdentifier];
    [(MRContentItem *)self setQueueIdentifier:v22];
  }

  v23 = [v4 requestIdentifier];

  if (v23)
  {
    v24 = [v4 requestIdentifier];
    [(MRContentItem *)self setRequestIdentifier:v24];
  }

  v25 = [v4 artwork];

  if (v25)
  {
    v26 = [v4 artwork];
    [(MRContentItem *)self setArtwork:v26];
  }

  v27 = [v4 availableLanguageOptions];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [v4 availableLanguageOptions];
    [(MRContentItem *)self setAvailableLanguageOptions:v29];
  }

  v30 = [v4 currentLanguageOptions];
  v31 = [v30 count];

  if (v31)
  {
    v32 = [v4 currentLanguageOptions];
    [(MRContentItem *)self setCurrentLanguageOptions:v32];
  }

  v33 = [v4 sections];
  v34 = [v33 count];

  if (v34)
  {
    v35 = [v4 sections];
    [(MRContentItem *)self setSections:v35];
  }

  v36 = [v4 availableArtworkFormats];

  if (v36)
  {
    v37 = [v4 availableArtworkFormats];
    [(MRContentItem *)self setAvailableArtworkFormats:v37];
  }

  v38 = [v4 availableRemoteArtworkFormats];

  if (v38)
  {
    v39 = [v4 availableRemoteArtworkFormats];
    [(MRContentItem *)self setAvailableRemoteArtworkFormats:v39];
  }

  v40 = [v4 availableAnimatedArtworkFormats];

  if (v40)
  {
    v41 = [v4 availableAnimatedArtworkFormats];
    [(MRContentItem *)self setAvailableAnimatedArtworkFormats:v41];
  }

  v42 = [v4 artworks];
  v43 = [v42 count];

  if (v43)
  {
    v44 = [(MRContentItem *)self artworks];

    if (v44)
    {
      v45 = [(MRContentItem *)self artworks];
      v46 = [v45 mutableCopy];

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v47 = [v4 artworks];
      v48 = [v47 allKeys];

      v49 = [v48 countByEnumeratingWithState:&v115 objects:v122 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v116;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v116 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v53 = *(*(&v115 + 1) + 8 * i);
            v54 = [v4 artworks];
            v55 = [v54 objectForKeyedSubscript:v53];
            [v46 setObject:v55 forKeyedSubscript:v53];
          }

          v50 = [v48 countByEnumeratingWithState:&v115 objects:v122 count:16];
        }

        while (v50);
      }

      v56 = [v46 copy];
      [(MRContentItem *)self setArtworks:v56];
    }

    else
    {
      v46 = [v4 artworks];
      [(MRContentItem *)self setArtworks:v46];
    }
  }

  v57 = [v4 remoteArtworks];
  v58 = [v57 count];

  if (v58)
  {
    v59 = [(MRContentItem *)self remoteArtworks];

    if (v59)
    {
      v60 = [(MRContentItem *)self remoteArtworks];
      v61 = [v60 mutableCopy];

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v62 = [v4 remoteArtworks];
      v63 = [v62 allKeys];

      v64 = [v63 countByEnumeratingWithState:&v111 objects:v121 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v112;
        do
        {
          for (j = 0; j != v65; ++j)
          {
            if (*v112 != v66)
            {
              objc_enumerationMutation(v63);
            }

            v68 = *(*(&v111 + 1) + 8 * j);
            v69 = [v4 remoteArtworks];
            v70 = [v69 objectForKeyedSubscript:v68];
            [v61 setObject:v70 forKeyedSubscript:v68];
          }

          v65 = [v63 countByEnumeratingWithState:&v111 objects:v121 count:16];
        }

        while (v65);
      }

      v71 = [v61 copy];
      [(MRContentItem *)self setRemoteArtworks:v71];
    }

    else
    {
      v61 = [v4 remoteArtworks];
      [(MRContentItem *)self setRemoteArtworks:v61];
    }
  }

  if (_os_feature_enabled_impl())
  {
    v72 = [v4 animatedArtworkPreviewFrames];
    v73 = [v72 count];

    if (v73)
    {
      v74 = [(MRContentItem *)self animatedArtworkPreviewFrames];

      if (v74)
      {
        v75 = [(MRContentItem *)self animatedArtworkPreviewFrames];
        v76 = [v75 mutableCopy];

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v77 = [v4 animatedArtworkPreviewFrames];
        v78 = [v77 allKeys];

        v79 = [v78 countByEnumeratingWithState:&v107 objects:v120 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v108;
          do
          {
            for (k = 0; k != v80; ++k)
            {
              if (*v108 != v81)
              {
                objc_enumerationMutation(v78);
              }

              v83 = *(*(&v107 + 1) + 8 * k);
              v84 = [v4 animatedArtworkPreviewFrames];
              v85 = [v84 objectForKeyedSubscript:v83];
              [v76 setObject:v85 forKeyedSubscript:v83];
            }

            v80 = [v78 countByEnumeratingWithState:&v107 objects:v120 count:16];
          }

          while (v80);
        }

        v86 = [v76 copy];
        [(MRContentItem *)self setAnimatedArtworkPreviewFrames:v86];
      }

      else
      {
        v76 = [v4 animatedArtworkPreviewFrames];
        [(MRContentItem *)self setAnimatedArtworkPreviewFrames:v76];
      }
    }

    v87 = [v4 animatedArtworks];
    v88 = [v87 count];

    if (v88)
    {
      v89 = [(MRContentItem *)self animatedArtworks];

      if (v89)
      {
        v90 = [(MRContentItem *)self animatedArtworks];
        v91 = [v90 mutableCopy];

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v92 = [v4 animatedArtworks];
        v93 = [v92 allKeys];

        v94 = [v93 countByEnumeratingWithState:&v103 objects:v119 count:16];
        if (v94)
        {
          v95 = v94;
          v96 = *v104;
          do
          {
            for (m = 0; m != v95; ++m)
            {
              if (*v104 != v96)
              {
                objc_enumerationMutation(v93);
              }

              v98 = *(*(&v103 + 1) + 8 * m);
              v99 = [v4 animatedArtworks];
              v100 = [v99 objectForKeyedSubscript:v98];
              [v91 setObject:v100 forKeyedSubscript:v98];
            }

            v95 = [v93 countByEnumeratingWithState:&v103 objects:v119 count:16];
          }

          while (v95);
        }

        v101 = [v91 copy];
        [(MRContentItem *)self setAnimatedArtworks:v101];
      }

      else
      {
        v91 = [v4 animatedArtworks];
        [(MRContentItem *)self setAnimatedArtworks:v91];
      }
    }
  }

  v102 = *MEMORY[0x1E69E9840];
}

+ (id)extractedIdentifierFromNowPlayingInfo:(id)a3
{
  if (!a3)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v3 = a3;
  v4 = [v3 objectForKey:@"kMRMediaRemoteNowPlayingInfoContentItemIdentifier"];
  v5 = [v3 objectForKey:@"kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier"];
  v6 = [v3 objectForKey:@"kMRMediaRemoteNowPlayingInfoExternalContentIdentifier"];
  v7 = [v3 objectForKey:@"kMRMediaRemoteNowPlayingInfoUniqueIdentifier"];

  if (!v4)
  {
    if (v5)
    {
      v10 = v5;
LABEL_7:
      v8 = [v10 stringValue];
      goto LABEL_10;
    }

    if (v6)
    {
      v8 = v6;
      goto LABEL_10;
    }

    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = v7;
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        goto LABEL_10;
      }
    }

    v9 = 0;
    goto LABEL_11;
  }

  v8 = v4;
LABEL_10:
  v9 = v8;
LABEL_11:

LABEL_12:

  return v9;
}

+ (id)mergeContentItems:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v4 objectForKeyedSubscript:v11];

        if (v12)
        {
          [v12 mergeFrom:v10];
        }

        else
        {
          v13 = [v10 copy];
          v14 = [v10 identifier];
          [v4 setObject:v13 forKeyedSubscript:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v4 allValues];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_78:
      v11 = 0;
      goto LABEL_79;
    }

    v5 = [(MRContentItem *)v4 identifier];
    v6 = [(MRContentItem *)self identifier];
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      v8 = [(MRContentItem *)v4 identifier];
      v9 = [(MRContentItem *)self identifier];
      v10 = [v8 isEqualToString:v9];

      if (!v10)
      {
        goto LABEL_78;
      }
    }

    v12 = [(MRContentItem *)v4 metadata];
    v13 = [(MRContentItem *)self metadata];
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      v15 = [(MRContentItem *)v4 metadata];
      v16 = [(MRContentItem *)self metadata];
      v17 = [v15 isEqual:v16];

      if (!v17)
      {
        goto LABEL_78;
      }
    }

    v18 = [(MRContentItem *)v4 info];
    v19 = [(MRContentItem *)self info];
    v20 = v19;
    if (v18 == v19)
    {
    }

    else
    {
      v21 = [(MRContentItem *)v4 info];
      v22 = [(MRContentItem *)self info];
      v23 = [v21 isEqualToString:v22];

      if (!v23)
      {
        goto LABEL_78;
      }
    }

    v24 = [(MRContentItem *)v4 transcriptAlignments];
    v25 = [(MRContentItem *)self transcriptAlignments];
    v26 = v25;
    if (v24 == v25)
    {
    }

    else
    {
      v27 = [(MRContentItem *)v4 transcriptAlignments];
      v28 = [(MRContentItem *)self transcriptAlignments];
      v29 = [v27 isEqualToArray:v28];

      if (!v29)
      {
        goto LABEL_78;
      }
    }

    v30 = [(MRContentItem *)v4 availableLanguageOptions];
    v31 = [(MRContentItem *)self availableLanguageOptions];
    v32 = v31;
    if (v30 == v31)
    {
    }

    else
    {
      v33 = [(MRContentItem *)v4 availableLanguageOptions];
      v34 = [(MRContentItem *)self availableLanguageOptions];
      v35 = [v33 isEqualToArray:v34];

      if (!v35)
      {
        goto LABEL_78;
      }
    }

    v36 = [(MRContentItem *)v4 currentLanguageOptions];
    v37 = [(MRContentItem *)self currentLanguageOptions];
    v38 = v37;
    if (v36 == v37)
    {
    }

    else
    {
      v39 = [(MRContentItem *)v4 currentLanguageOptions];
      v40 = [(MRContentItem *)self currentLanguageOptions];
      v41 = [v39 isEqualToArray:v40];

      if (!v41)
      {
        goto LABEL_78;
      }
    }

    v42 = [(MRContentItem *)v4 sections];
    v43 = [(MRContentItem *)self sections];
    v44 = v43;
    if (v42 == v43)
    {
    }

    else
    {
      v45 = [(MRContentItem *)v4 sections];
      v46 = [(MRContentItem *)self sections];
      v47 = [v45 isEqualToArray:v46];

      if (!v47)
      {
        goto LABEL_78;
      }
    }

    v48 = [(MRContentItem *)v4 parentIdentifier];
    v49 = [(MRContentItem *)self parentIdentifier];
    v50 = v49;
    if (v48 == v49)
    {
    }

    else
    {
      v51 = [(MRContentItem *)v4 parentIdentifier];
      v52 = [(MRContentItem *)self parentIdentifier];
      v53 = [v51 isEqualToString:v52];

      if (!v53)
      {
        goto LABEL_78;
      }
    }

    v54 = [(MRContentItem *)v4 ancestorIdentifier];
    v55 = [(MRContentItem *)self ancestorIdentifier];
    v56 = v55;
    if (v54 == v55)
    {
    }

    else
    {
      v57 = [(MRContentItem *)v4 ancestorIdentifier];
      v58 = [(MRContentItem *)self ancestorIdentifier];
      v59 = [v57 isEqualToString:v58];

      if (!v59)
      {
        goto LABEL_78;
      }
    }

    v60 = [(MRContentItem *)v4 associatedParticipantIdentifier];
    v61 = [(MRContentItem *)self associatedParticipantIdentifier];
    v62 = v61;
    if (v60 == v61)
    {
    }

    else
    {
      v63 = [(MRContentItem *)v4 associatedParticipantIdentifier];
      v64 = [(MRContentItem *)self associatedParticipantIdentifier];
      v65 = [v63 isEqualToString:v64];

      if (!v65)
      {
        goto LABEL_78;
      }
    }

    v66 = [(MRContentItem *)v4 queueIdentifier];
    v67 = [(MRContentItem *)self queueIdentifier];
    v68 = v67;
    if (v66 == v67)
    {
    }

    else
    {
      v69 = [(MRContentItem *)v4 queueIdentifier];
      v70 = [(MRContentItem *)self queueIdentifier];
      v71 = [v69 isEqualToString:v70];

      if (!v71)
      {
        goto LABEL_78;
      }
    }

    v72 = [(MRContentItem *)v4 requestIdentifier];
    v73 = [(MRContentItem *)self requestIdentifier];
    v74 = v73;
    if (v72 == v73)
    {
    }

    else
    {
      v75 = [(MRContentItem *)v4 requestIdentifier];
      v76 = [(MRContentItem *)self requestIdentifier];
      v77 = [v75 isEqualToString:v76];

      if (!v77)
      {
        goto LABEL_78;
      }
    }

    v78 = [(MRContentItem *)v4 availableArtworkFormats];
    v79 = [(MRContentItem *)self availableArtworkFormats];
    v80 = v79;
    if (v78 == v79)
    {
    }

    else
    {
      v81 = [v78 isEqual:v79];

      if ((v81 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    v82 = [(MRContentItem *)v4 availableRemoteArtworkFormats];
    v83 = [(MRContentItem *)self availableRemoteArtworkFormats];
    v84 = v83;
    if (v82 == v83)
    {
    }

    else
    {
      v85 = [v82 isEqual:v83];

      if ((v85 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    v86 = [(MRContentItem *)v4 availableAnimatedArtworkFormats];
    v87 = [(MRContentItem *)self availableAnimatedArtworkFormats];
    v88 = v87;
    if (v86 == v87)
    {
    }

    else
    {
      v89 = [v86 isEqual:v87];

      if ((v89 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    v90 = [(MRContentItem *)v4 artwork];
    v91 = [(MRContentItem *)self artwork];
    v92 = v91;
    if (v90 == v91)
    {
    }

    else
    {
      v93 = [(MRContentItem *)v4 artwork];
      v94 = [(MRContentItem *)self artwork];
      v95 = [v93 isEqual:v94];

      if (!v95)
      {
        goto LABEL_78;
      }
    }

    v96 = [(MRContentItem *)v4 artworks];
    v97 = [(MRContentItem *)self artworks];
    v98 = v97;
    if (v96 == v97)
    {
    }

    else
    {
      v99 = [v96 isEqual:v97];

      if ((v99 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    v100 = [(MRContentItem *)v4 remoteArtworks];
    v101 = [(MRContentItem *)self remoteArtworks];
    v102 = v101;
    if (v100 == v101)
    {
    }

    else
    {
      v103 = [v100 isEqual:v101];

      if ((v103 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    v104 = [(MRContentItem *)v4 animatedArtworkPreviewFrames];
    v105 = [(MRContentItem *)self animatedArtworkPreviewFrames];
    v106 = v105;
    if (v104 == v105)
    {
    }

    else
    {
      v107 = [v104 isEqual:v105];

      if ((v107 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    v109 = [(MRContentItem *)v4 animatedArtworks];
    v110 = [(MRContentItem *)self animatedArtworks];
    if (v109 == v110)
    {
      v11 = 1;
    }

    else
    {
      v11 = [v109 isEqual:v110];
    }
  }

LABEL_79:

  return v11;
}

- (BOOL)isEffectivelyEqual:(id)a3
{
  v4 = a3;
  v5 = _AXSHapticMusicEnabled();
  v6 = [(MRContentItem *)self copy];
  v7 = [v4 copy];
  v8 = [v6 metadata];
  [v8 setHasElapsedTime:0];

  v9 = [v6 metadata];
  [v9 setHasElapsedTimeTimestamp:0];

  v10 = [v6 metadata];
  [v10 setHasInferredTimestamp:0];

  v11 = [v7 metadata];
  [v11 setHasElapsedTime:0];

  v12 = [v7 metadata];
  [v12 setHasElapsedTimeTimestamp:0];

  v13 = [v7 metadata];
  [v13 setHasInferredTimestamp:0];

  v14 = 0;
  if ([v6 isEqual:v7])
  {
    v15 = v5 == 0;
    v16 = [(MRContentItem *)self metadata];
    [v16 calculatedPlaybackPosition];
    v18 = v17;
    v19 = [v4 metadata];
    [v19 calculatedPlaybackPosition];
    v14 = vabdd_f64(v18, v20) < dbl_1A2B81000[v15];
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MRContentItem *)self identifier];
  v7 = [v6 copyWithZone:a3];
  [v5 setIdentifier:v7];

  v8 = [(MRContentItem *)self metadata];
  v9 = [v8 copyWithZone:a3];
  [v5 setMetadata:v9];

  v10 = [(MRContentItem *)self info];
  v11 = [v10 copyWithZone:a3];
  [v5 setInfo:v11];

  v12 = [(MRContentItem *)self parentIdentifier];
  v13 = [v12 copyWithZone:a3];
  [v5 setParentIdentifier:v13];

  v14 = [(MRContentItem *)self ancestorIdentifier];
  v15 = [v14 copyWithZone:a3];
  [v5 setAncestorIdentifier:v15];

  v16 = [(MRContentItem *)self associatedParticipantIdentifier];
  v17 = [v16 copyWithZone:a3];
  [v5 setAssociatedParticipantIdentifier:v17];

  v18 = [(MRContentItem *)self queueIdentifier];
  v19 = [v18 copyWithZone:a3];
  [v5 setQueueIdentifier:v19];

  v20 = [(MRContentItem *)self requestIdentifier];
  v21 = [v20 copyWithZone:a3];
  [v5 setRequestIdentifier:v21];

  v22 = [(MRContentItem *)self artwork];
  v23 = [v22 copyWithZone:a3];
  [v5 setArtwork:v23];

  v24 = [(MRContentItem *)self transcriptAlignments];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __30__MRContentItem_copyWithZone___block_invoke;
  v50[3] = &__block_descriptor_40_e31__16__0__MRTranscriptAlignment_8l;
  v50[4] = a3;
  v25 = [v24 mr_map:v50];
  [v5 setTranscriptAlignments:v25];

  v26 = [(MRContentItem *)self availableLanguageOptions];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __30__MRContentItem_copyWithZone___block_invoke_2;
  v49[3] = &__block_descriptor_40_e31__16__0__MRLanguageOptionGroup_8l;
  v49[4] = a3;
  v27 = [v26 mr_map:v49];
  [v5 setAvailableLanguageOptions:v27];

  v28 = [(MRContentItem *)self currentLanguageOptions];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __30__MRContentItem_copyWithZone___block_invoke_3;
  v48[3] = &__block_descriptor_40_e26__16__0__MRLanguageOption_8l;
  v48[4] = a3;
  v29 = [v28 mr_map:v48];
  [v5 setCurrentLanguageOptions:v29];

  v30 = [(MRContentItem *)self sections];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __30__MRContentItem_copyWithZone___block_invoke_4;
  v47[3] = &__block_descriptor_40_e23__16__0__MRContentItem_8l;
  v47[4] = a3;
  v31 = [v30 mr_map:v47];
  [v5 setSections:v31];

  v32 = [(MRContentItem *)self availableArtworkFormats];
  v33 = [v32 copyWithZone:a3];
  [v5 setAvailableArtworkFormats:v33];

  v34 = [(MRContentItem *)self availableRemoteArtworkFormats];
  v35 = [v34 copyWithZone:a3];
  [v5 setAvailableRemoteArtworkFormats:v35];

  v36 = [(MRContentItem *)self availableAnimatedArtworkFormats];
  v37 = [v36 copyWithZone:a3];
  [v5 setAvailableAnimatedArtworkFormats:v37];

  v38 = [(MRContentItem *)self artworks];
  v39 = [v38 copyWithZone:a3];
  [v5 setArtworks:v39];

  v40 = [(MRContentItem *)self remoteArtworks];
  v41 = [v40 copyWithZone:a3];
  [v5 setRemoteArtworks:v41];

  v42 = [(MRContentItem *)self animatedArtworkPreviewFrames];
  v43 = [v42 copyWithZone:a3];
  [v5 setAnimatedArtworkPreviewFrames:v43];

  v44 = [(MRContentItem *)self animatedArtworks];
  v45 = [v44 copyWithZone:a3];
  [v5 setAnimatedArtworks:v45];

  return v5;
}

id __30__MRContentItem_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

id __30__MRContentItem_copyWithZone___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

id __30__MRContentItem_copyWithZone___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

id __30__MRContentItem_copyWithZone___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

@end
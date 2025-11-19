@interface BMSiriMusicInferenceTrainingIndependentSignals
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriMusicInferenceTrainingIndependentSignals)initWithClientDayOfWeek:(id)a3 rawClientHourOfDay:(id)a4 isMediaAlbumPresent:(id)a5 isMediaArtistPresent:(id)a6 isMediaGenrePresent:(id)a7 isMediaMoodPresent:(id)a8 isMediaNamePresent:(id)a9 isMediaReleaseDatePresent:(id)a10 nowPlayingLastBundleRecencyS:(id)a11 rawLanguage:(id)a12 rawLocale:(id)a13 rawRegion:(id)a14 isClientDaylight:(id)a15 isClientNavigating:(id)a16 isClientWorkout:(id)a17 mediaType:(id)a18 nowPlayingState:(id)a19 isPireneRequest:(id)a20 foregroundBundleRecencyS:(id)a21 mediaParsecCategory:(id)a22 sirikitResponseCode:(id)a23 appSelectionUses:(id)a24 modelVersion:(id)a25 resolutionType:(int)a26;
- (BMSiriMusicInferenceTrainingIndependentSignals)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriMusicInferenceTrainingIndependentSignals

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasClientDayOfWeek](self, "hasClientDayOfWeek") || [v5 hasClientDayOfWeek])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasClientDayOfWeek])
      {
        goto LABEL_119;
      }

      if (![v5 hasClientDayOfWeek])
      {
        goto LABEL_119;
      }

      v6 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self clientDayOfWeek];
      if (v6 != [v5 clientDayOfWeek])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasRawClientHourOfDay](self, "hasRawClientHourOfDay") || [v5 hasRawClientHourOfDay])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasRawClientHourOfDay])
      {
        goto LABEL_119;
      }

      if (![v5 hasRawClientHourOfDay])
      {
        goto LABEL_119;
      }

      v7 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self rawClientHourOfDay];
      if (v7 != [v5 rawClientHourOfDay])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasIsMediaAlbumPresent](self, "hasIsMediaAlbumPresent") || [v5 hasIsMediaAlbumPresent])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaAlbumPresent])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsMediaAlbumPresent])
      {
        goto LABEL_119;
      }

      v8 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self isMediaAlbumPresent];
      if (v8 != [v5 isMediaAlbumPresent])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasIsMediaArtistPresent](self, "hasIsMediaArtistPresent") || [v5 hasIsMediaArtistPresent])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaArtistPresent])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsMediaArtistPresent])
      {
        goto LABEL_119;
      }

      v9 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self isMediaArtistPresent];
      if (v9 != [v5 isMediaArtistPresent])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasIsMediaGenrePresent](self, "hasIsMediaGenrePresent") || [v5 hasIsMediaGenrePresent])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaGenrePresent])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsMediaGenrePresent])
      {
        goto LABEL_119;
      }

      v10 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self isMediaGenrePresent];
      if (v10 != [v5 isMediaGenrePresent])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasIsMediaMoodPresent](self, "hasIsMediaMoodPresent") || [v5 hasIsMediaMoodPresent])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaMoodPresent])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsMediaMoodPresent])
      {
        goto LABEL_119;
      }

      v11 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self isMediaMoodPresent];
      if (v11 != [v5 isMediaMoodPresent])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasIsMediaNamePresent](self, "hasIsMediaNamePresent") || [v5 hasIsMediaNamePresent])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaNamePresent])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsMediaNamePresent])
      {
        goto LABEL_119;
      }

      v12 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self isMediaNamePresent];
      if (v12 != [v5 isMediaNamePresent])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasIsMediaReleaseDatePresent](self, "hasIsMediaReleaseDatePresent") || [v5 hasIsMediaReleaseDatePresent])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaReleaseDatePresent])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsMediaReleaseDatePresent])
      {
        goto LABEL_119;
      }

      v13 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self isMediaReleaseDatePresent];
      if (v13 != [v5 isMediaReleaseDatePresent])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasNowPlayingLastBundleRecencyS](self, "hasNowPlayingLastBundleRecencyS") || [v5 hasNowPlayingLastBundleRecencyS])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasNowPlayingLastBundleRecencyS])
      {
        goto LABEL_119;
      }

      if (![v5 hasNowPlayingLastBundleRecencyS])
      {
        goto LABEL_119;
      }

      v14 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self nowPlayingLastBundleRecencyS];
      if (v14 != [v5 nowPlayingLastBundleRecencyS])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasRawLanguage](self, "hasRawLanguage") || [v5 hasRawLanguage])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasRawLanguage])
      {
        goto LABEL_119;
      }

      if (![v5 hasRawLanguage])
      {
        goto LABEL_119;
      }

      v15 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self rawLanguage];
      if (v15 != [v5 rawLanguage])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasRawLocale](self, "hasRawLocale") || [v5 hasRawLocale])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasRawLocale])
      {
        goto LABEL_119;
      }

      if (![v5 hasRawLocale])
      {
        goto LABEL_119;
      }

      v16 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self rawLocale];
      if (v16 != [v5 rawLocale])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasRawRegion](self, "hasRawRegion") || [v5 hasRawRegion])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasRawRegion])
      {
        goto LABEL_119;
      }

      if (![v5 hasRawRegion])
      {
        goto LABEL_119;
      }

      v17 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self rawRegion];
      if (v17 != [v5 rawRegion])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasIsClientDaylight](self, "hasIsClientDaylight") || [v5 hasIsClientDaylight])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsClientDaylight])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsClientDaylight])
      {
        goto LABEL_119;
      }

      v18 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self isClientDaylight];
      if (v18 != [v5 isClientDaylight])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasIsClientNavigating](self, "hasIsClientNavigating") || [v5 hasIsClientNavigating])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsClientNavigating])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsClientNavigating])
      {
        goto LABEL_119;
      }

      v19 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self isClientNavigating];
      if (v19 != [v5 isClientNavigating])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasIsClientWorkout](self, "hasIsClientWorkout") || [v5 hasIsClientWorkout])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsClientWorkout])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsClientWorkout])
      {
        goto LABEL_119;
      }

      v20 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self isClientWorkout];
      if (v20 != [v5 isClientWorkout])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasMediaType](self, "hasMediaType") || [v5 hasMediaType])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasMediaType])
      {
        goto LABEL_119;
      }

      if (![v5 hasMediaType])
      {
        goto LABEL_119;
      }

      v21 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self mediaType];
      if (v21 != [v5 mediaType])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasNowPlayingState](self, "hasNowPlayingState") || [v5 hasNowPlayingState])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasNowPlayingState])
      {
        goto LABEL_119;
      }

      if (![v5 hasNowPlayingState])
      {
        goto LABEL_119;
      }

      v22 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self nowPlayingState];
      if (v22 != [v5 nowPlayingState])
      {
        goto LABEL_119;
      }
    }

    if (-[BMSiriMusicInferenceTrainingIndependentSignals hasIsPireneRequest](self, "hasIsPireneRequest") || [v5 hasIsPireneRequest])
    {
      if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsPireneRequest])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsPireneRequest])
      {
        goto LABEL_119;
      }

      v23 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self isPireneRequest];
      if (v23 != [v5 isPireneRequest])
      {
        goto LABEL_119;
      }
    }

    if ((!-[BMSiriMusicInferenceTrainingIndependentSignals hasForegroundBundleRecencyS](self, "hasForegroundBundleRecencyS") && ![v5 hasForegroundBundleRecencyS] || -[BMSiriMusicInferenceTrainingIndependentSignals hasForegroundBundleRecencyS](self, "hasForegroundBundleRecencyS") && objc_msgSend(v5, "hasForegroundBundleRecencyS") && (-[BMSiriMusicInferenceTrainingIndependentSignals foregroundBundleRecencyS](self, "foregroundBundleRecencyS"), v25 = v24, objc_msgSend(v5, "foregroundBundleRecencyS"), v25 == v26)) && (!-[BMSiriMusicInferenceTrainingIndependentSignals hasMediaParsecCategory](self, "hasMediaParsecCategory") && !objc_msgSend(v5, "hasMediaParsecCategory") || -[BMSiriMusicInferenceTrainingIndependentSignals hasMediaParsecCategory](self, "hasMediaParsecCategory") && objc_msgSend(v5, "hasMediaParsecCategory") && (v27 = -[BMSiriMusicInferenceTrainingIndependentSignals mediaParsecCategory](self, "mediaParsecCategory"), v27 == objc_msgSend(v5, "mediaParsecCategory"))) && (!-[BMSiriMusicInferenceTrainingIndependentSignals hasSirikitResponseCode](self, "hasSirikitResponseCode") && !objc_msgSend(v5, "hasSirikitResponseCode") || -[BMSiriMusicInferenceTrainingIndependentSignals hasSirikitResponseCode](self, "hasSirikitResponseCode") && objc_msgSend(v5, "hasSirikitResponseCode") && (v28 = -[BMSiriMusicInferenceTrainingIndependentSignals sirikitResponseCode](self, "sirikitResponseCode"), v28 == objc_msgSend(v5, "sirikitResponseCode"))) && (!-[BMSiriMusicInferenceTrainingIndependentSignals hasAppSelectionUses](self, "hasAppSelectionUses") && !objc_msgSend(v5, "hasAppSelectionUses") || -[BMSiriMusicInferenceTrainingIndependentSignals hasAppSelectionUses](self, "hasAppSelectionUses") && objc_msgSend(v5, "hasAppSelectionUses") && (v29 = -[BMSiriMusicInferenceTrainingIndependentSignals appSelectionUses](self, "appSelectionUses"), v29 == objc_msgSend(v5, "appSelectionUses"))) && (!-[BMSiriMusicInferenceTrainingIndependentSignals hasModelVersion](self, "hasModelVersion") && !objc_msgSend(v5, "hasModelVersion") || -[BMSiriMusicInferenceTrainingIndependentSignals hasModelVersion](self, "hasModelVersion") && objc_msgSend(v5, "hasModelVersion") && (v30 = -[BMSiriMusicInferenceTrainingIndependentSignals modelVersion](self, "modelVersion"), v30 == objc_msgSend(v5, "modelVersion"))))
    {
      v31 = [(BMSiriMusicInferenceTrainingIndependentSignals *)self resolutionType];
      v32 = v31 == [v5 resolutionType];
    }

    else
    {
LABEL_119:
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (id)jsonDictionary
{
  v86[24] = *MEMORY[0x1E69E9840];
  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasClientDayOfWeek])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals clientDayOfWeek](self, "clientDayOfWeek")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasRawClientHourOfDay])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals rawClientHourOfDay](self, "rawClientHourOfDay")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaAlbumPresent])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaAlbumPresent](self, "isMediaAlbumPresent")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaArtistPresent])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaArtistPresent](self, "isMediaArtistPresent")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaGenrePresent])
  {
    v68 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaGenrePresent](self, "isMediaGenrePresent")}];
  }

  else
  {
    v68 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaMoodPresent])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaMoodPresent](self, "isMediaMoodPresent")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaNamePresent])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaNamePresent](self, "isMediaNamePresent")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsMediaReleaseDatePresent])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaReleaseDatePresent](self, "isMediaReleaseDatePresent")}];
  }

  else
  {
    v84 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasNowPlayingLastBundleRecencyS])
  {
    v83 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals nowPlayingLastBundleRecencyS](self, "nowPlayingLastBundleRecencyS")}];
  }

  else
  {
    v83 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasRawLanguage])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriMusicInferenceTrainingIndependentSignals rawLanguage](self, "rawLanguage")}];
  }

  else
  {
    v82 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasRawLocale])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriMusicInferenceTrainingIndependentSignals rawLocale](self, "rawLocale")}];
  }

  else
  {
    v81 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasRawRegion])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriMusicInferenceTrainingIndependentSignals rawRegion](self, "rawRegion")}];
  }

  else
  {
    v80 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsClientDaylight])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isClientDaylight](self, "isClientDaylight")}];
  }

  else
  {
    v79 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsClientNavigating])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isClientNavigating](self, "isClientNavigating")}];
  }

  else
  {
    v78 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsClientWorkout])
  {
    v77 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isClientWorkout](self, "isClientWorkout")}];
  }

  else
  {
    v77 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasMediaType])
  {
    v76 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals mediaType](self, "mediaType")}];
  }

  else
  {
    v76 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasNowPlayingState])
  {
    v75 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals nowPlayingState](self, "nowPlayingState")}];
  }

  else
  {
    v75 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasIsPireneRequest])
  {
    v74 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isPireneRequest](self, "isPireneRequest")}];
  }

  else
  {
    v74 = 0;
  }

  if (![(BMSiriMusicInferenceTrainingIndependentSignals *)self hasForegroundBundleRecencyS]|| ([(BMSiriMusicInferenceTrainingIndependentSignals *)self foregroundBundleRecencyS], fabs(v9) == INFINITY))
  {
    v73 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingIndependentSignals *)self foregroundBundleRecencyS];
    v10 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingIndependentSignals *)self foregroundBundleRecencyS];
    v73 = [v10 numberWithDouble:?];
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasMediaParsecCategory])
  {
    v72 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals mediaParsecCategory](self, "mediaParsecCategory")}];
  }

  else
  {
    v72 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasSirikitResponseCode])
  {
    v71 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals sirikitResponseCode](self, "sirikitResponseCode")}];
  }

  else
  {
    v71 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasAppSelectionUses])
  {
    v70 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals appSelectionUses](self, "appSelectionUses")}];
  }

  else
  {
    v70 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingIndependentSignals *)self hasModelVersion])
  {
    v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriMusicInferenceTrainingIndependentSignals modelVersion](self, "modelVersion")}];
  }

  else
  {
    v69 = 0;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals resolutionType](self, "resolutionType")}];
  v85[0] = @"clientDayOfWeek";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v12;
  v86[0] = v12;
  v85[1] = @"rawClientHourOfDay";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v13;
  v86[1] = v13;
  v85[2] = @"isMediaAlbumPresent";
  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v14;
  v86[2] = v14;
  v85[3] = @"isMediaArtistPresent";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = v15;
  v86[3] = v15;
  v85[4] = @"isMediaGenrePresent";
  v16 = v68;
  if (!v68)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v16;
  v86[4] = v16;
  v85[5] = @"isMediaMoodPresent";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = v17;
  v86[5] = v17;
  v85[6] = @"isMediaNamePresent";
  v18 = v8;
  if (!v8)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v8;
  v54 = v18;
  v86[6] = v18;
  v85[7] = @"isMediaReleaseDatePresent";
  v20 = v84;
  if (!v84)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v6;
  v86[7] = v20;
  v85[8] = @"nowPlayingLastBundleRecencyS";
  v22 = v83;
  if (!v83)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v86[8] = v22;
  v85[9] = @"rawLanguage";
  v24 = v82;
  if (!v82)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v3;
  v62 = v24;
  v86[9] = v24;
  v85[10] = @"rawLocale";
  v26 = v81;
  if (!v81)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v26;
  v86[10] = v26;
  v85[11] = @"rawRegion";
  v28 = v80;
  if (!v80)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = v28;
  v86[11] = v28;
  v85[12] = @"isClientDaylight";
  v29 = v79;
  if (!v79)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v29;
  v86[12] = v29;
  v85[13] = @"isClientNavigating";
  v30 = v78;
  if (!v78)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v30;
  v86[13] = v30;
  v85[14] = @"isClientWorkout";
  v31 = v77;
  if (!v77)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v31;
  v86[14] = v31;
  v85[15] = @"mediaType";
  v32 = v76;
  if (!v76)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v32;
  v86[15] = v32;
  v85[16] = @"nowPlayingState";
  v33 = v75;
  if (!v75)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v22;
  v48 = v33;
  v86[16] = v33;
  v85[17] = @"isPireneRequest";
  v34 = v74;
  if (!v74)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v7;
  v47 = v34;
  v86[17] = v34;
  v85[18] = @"foregroundBundleRecencyS";
  v35 = v73;
  if (!v73)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v11;
  v66 = v25;
  v46 = v35;
  v86[18] = v35;
  v85[19] = @"mediaParsecCategory";
  v36 = v72;
  if (!v72)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = v23;
  v86[19] = v36;
  v85[20] = @"sirikitResponseCode";
  v37 = v71;
  if (!v71)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v20;
  v86[20] = v37;
  v85[21] = @"appSelectionUses";
  v39 = v70;
  if (!v70)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v19;
  v86[21] = v39;
  v85[22] = @"modelVersion";
  v41 = v69;
  if (!v69)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v86[22] = v41;
  v85[23] = @"resolutionType";
  v42 = v67;
  if (!v67)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v86[23] = v42;
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:24];
  if (!v67)
  {
  }

  v43 = v27;
  if (!v69)
  {

    v43 = v27;
  }

  if (!v70)
  {

    v43 = v27;
  }

  if (!v71)
  {

    v43 = v27;
  }

  if (!v72)
  {

    v43 = v27;
  }

  if (!v73)
  {

    v43 = v27;
  }

  if (!v74)
  {

    v43 = v27;
  }

  if (!v75)
  {

    v43 = v27;
  }

  if (!v76)
  {

    v43 = v27;
  }

  if (!v77)
  {

    v43 = v27;
  }

  if (!v78)
  {

    v43 = v27;
  }

  if (!v79)
  {

    v43 = v27;
  }

  if (!v80)
  {

    v43 = v27;
  }

  if (!v81)
  {
  }

  if (!v82)
  {
  }

  if (!v83)
  {
  }

  if (v84)
  {
    if (v40)
    {
      goto LABEL_153;
    }
  }

  else
  {

    if (v40)
    {
LABEL_153:
      if (v65)
      {
        goto LABEL_154;
      }

      goto LABEL_164;
    }
  }

  if (v65)
  {
LABEL_154:
    if (v68)
    {
      goto LABEL_155;
    }

    goto LABEL_165;
  }

LABEL_164:

  if (v68)
  {
LABEL_155:
    if (v21)
    {
      goto LABEL_156;
    }

    goto LABEL_166;
  }

LABEL_165:

  if (v21)
  {
LABEL_156:
    if (v5)
    {
      goto LABEL_157;
    }

    goto LABEL_167;
  }

LABEL_166:

  if (v5)
  {
LABEL_157:
    if (v64)
    {
      goto LABEL_158;
    }

LABEL_168:

    if (v66)
    {
      goto LABEL_159;
    }

    goto LABEL_169;
  }

LABEL_167:

  if (!v64)
  {
    goto LABEL_168;
  }

LABEL_158:
  if (v66)
  {
    goto LABEL_159;
  }

LABEL_169:

LABEL_159:
  v44 = *MEMORY[0x1E69E9840];

  return v61;
}

- (BMSiriMusicInferenceTrainingIndependentSignals)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v291[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v243 = [v6 objectForKeyedSubscript:@"clientDayOfWeek"];
  if (!v243 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v241 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v241 = v243;
LABEL_4:
    v242 = [v6 objectForKeyedSubscript:@"rawClientHourOfDay"];
    if (!v242 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v240 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v240 = v242;
LABEL_7:
      v7 = [v6 objectForKeyedSubscript:@"isMediaAlbumPresent"];
      if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v239 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v239 = v7;
LABEL_10:
        v8 = [v6 objectForKeyedSubscript:@"isMediaArtistPresent"];
        v238 = v8;
        if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v235 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v235 = v9;
LABEL_13:
          v10 = [v6 objectForKeyedSubscript:@"isMediaGenrePresent"];
          if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v11 = a4;
            v233 = v10;
            v236 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = a4;
            v233 = v10;
            v236 = v10;
LABEL_16:
            v12 = [v6 objectForKeyedSubscript:@"isMediaMoodPresent"];
            if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v231 = v12;
              v234 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v231 = v12;
              v234 = v12;
LABEL_19:
              [v6 objectForKeyedSubscript:@"isMediaNamePresent"];
              v237 = v13 = v11;
              if (!v237 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v232 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v232 = v237;
LABEL_22:
                v14 = [v6 objectForKeyedSubscript:@"isMediaReleaseDatePresent"];
                v230 = v14;
                if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v225 = v11;
                  v229 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v225 = v11;
                  v229 = v15;
LABEL_25:
                  v16 = [v6 objectForKeyedSubscript:@"nowPlayingLastBundleRecencyS"];
                  v228 = v16;
                  if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v227 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v227 = v17;
LABEL_28:
                    v18 = [v6 objectForKeyedSubscript:@"rawLanguage"];
                    v224 = v18;
                    if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v226 = 0;
                      goto LABEL_31;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v226 = v19;
LABEL_31:
                      v20 = [v6 objectForKeyedSubscript:@"rawLocale"];
                      v222 = v20;
                      if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v223 = 0;
                        goto LABEL_34;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v223 = v21;
LABEL_34:
                        v22 = [v6 objectForKeyedSubscript:@"rawRegion"];
                        if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v221 = 0;
                          goto LABEL_37;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v221 = v22;
LABEL_37:
                          v23 = [v6 objectForKeyedSubscript:@"isClientDaylight"];
                          v219 = v23;
                          if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v220 = 0;
                            goto LABEL_40;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v220 = v24;
LABEL_40:
                            v25 = [v6 objectForKeyedSubscript:@"isClientNavigating"];
                            v217 = v25;
                            if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v218 = 0;
                              goto LABEL_43;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v218 = v26;
LABEL_43:
                              v27 = [v6 objectForKeyedSubscript:@"isClientWorkout"];
                              v214 = v27;
                              if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v215 = 0;
                                goto LABEL_46;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v215 = v28;
LABEL_46:
                                v29 = [v6 objectForKeyedSubscript:@"mediaType"];
                                v212 = v29;
                                if (!v29 || (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v213 = 0;
                                  goto LABEL_49;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v213 = v30;
LABEL_49:
                                  v31 = [v6 objectForKeyedSubscript:@"nowPlayingState"];
                                  v210 = v31;
                                  if (!v31 || (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v211 = 0;
                                    goto LABEL_52;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v211 = v32;
LABEL_52:
                                    v33 = [v6 objectForKeyedSubscript:@"isPireneRequest"];
                                    v208 = v33;
                                    if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v209 = 0;
                                      goto LABEL_55;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v209 = v34;
LABEL_55:
                                      v35 = [v6 objectForKeyedSubscript:@"foregroundBundleRecencyS"];
                                      v206 = v35;
                                      if (!v35 || (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v207 = 0;
                                        goto LABEL_58;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v207 = v36;
LABEL_58:
                                        v37 = [v6 objectForKeyedSubscript:@"mediaParsecCategory"];
                                        v203 = v37;
                                        if (!v37 || (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v205 = 0;
                                          goto LABEL_61;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v205 = v38;
LABEL_61:
                                          v39 = [v6 objectForKeyedSubscript:@"sirikitResponseCode"];
                                          v201 = v39;
                                          if (!v39 || (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v204 = 0;
                                            goto LABEL_64;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v204 = v40;
LABEL_64:
                                            v41 = [v6 objectForKeyedSubscript:@"appSelectionUses"];
                                            v200 = v41;
                                            if (!v41 || (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v202 = 0;
                                              goto LABEL_67;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v202 = v42;
LABEL_67:
                                              v43 = [v6 objectForKeyedSubscript:@"modelVersion"];
                                              v199 = v43;
                                              if (!v43 || (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v197 = 0;
                                                goto LABEL_70;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v197 = v44;
LABEL_70:
                                                v45 = [v6 objectForKeyedSubscript:@"resolutionType"];
                                                v198 = v45;
                                                if (v45 && (v46 = v45, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v47 = v46;
                                                    v48 = v235;
                                                    v49 = v233;
                                                  }

                                                  else
                                                  {
                                                    v169 = self;
                                                    objc_opt_class();
                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                    {
                                                      if (v225)
                                                      {
                                                        v173 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v174 = *MEMORY[0x1E698F240];
                                                        v244 = *MEMORY[0x1E696A578];
                                                        v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"resolutionType"];
                                                        v245 = v175;
                                                        v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v245 forKeys:&v244 count:1];
                                                        *v225 = [v173 initWithDomain:v174 code:2 userInfo:v176];
                                                      }

                                                      v47 = 0;
                                                      v53 = 0;
                                                      self = v169;
                                                      v48 = v235;
                                                      v49 = v233;
                                                      v12 = v231;
                                                      v163 = v197;
                                                      goto LABEL_198;
                                                    }

                                                    v170 = v46;
                                                    v47 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriMusicInferenceTrainingIndependentSignalsInferenceAppResolutionTypeFromString(v170)];

                                                    v48 = v235;
                                                    v49 = v233;
                                                  }
                                                }

                                                else
                                                {
                                                  v47 = 0;
                                                  v48 = v235;
                                                  v49 = v233;
                                                }

                                                v12 = v231;
                                                LODWORD(v196) = [v47 intValue];
                                                v163 = v197;
                                                self = [(BMSiriMusicInferenceTrainingIndependentSignals *)self initWithClientDayOfWeek:v241 rawClientHourOfDay:v240 isMediaAlbumPresent:v239 isMediaArtistPresent:v48 isMediaGenrePresent:v236 isMediaMoodPresent:v234 isMediaNamePresent:v232 isMediaReleaseDatePresent:v229 nowPlayingLastBundleRecencyS:v227 rawLanguage:v226 rawLocale:v223 rawRegion:v221 isClientDaylight:v220 isClientNavigating:v218 isClientWorkout:v215 mediaType:v213 nowPlayingState:v211 isPireneRequest:v209 foregroundBundleRecencyS:v207 mediaParsecCategory:v205 sirikitResponseCode:v204 appSelectionUses:v202 modelVersion:v197 resolutionType:v196];
                                                v53 = self;
LABEL_198:

LABEL_199:
LABEL_200:

LABEL_201:
LABEL_202:

LABEL_203:
                                                goto LABEL_204;
                                              }

                                              v216 = v22;
                                              if (v225)
                                              {
                                                v164 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v165 = *MEMORY[0x1E698F240];
                                                v246 = *MEMORY[0x1E696A578];
                                                v166 = self;
                                                v167 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v195 = objc_opt_class();
                                                v168 = v167;
                                                self = v166;
                                                v47 = [v168 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v195, @"modelVersion"];
                                                v247 = v47;
                                                v198 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v247 forKeys:&v246 count:1];
                                                v163 = 0;
                                                v53 = 0;
                                                *v225 = [v164 initWithDomain:v165 code:2 userInfo:?];
                                                v48 = v235;
                                                v49 = v233;
                                                v12 = v231;
                                                goto LABEL_198;
                                              }

                                              v163 = 0;
                                              v53 = 0;
LABEL_234:
                                              v48 = v235;
                                              v49 = v233;
                                              v12 = v231;
                                              v22 = v216;
                                              goto LABEL_199;
                                            }

                                            v216 = v22;
                                            if (v225)
                                            {
                                              v158 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v159 = *MEMORY[0x1E698F240];
                                              v248 = *MEMORY[0x1E696A578];
                                              v160 = self;
                                              v161 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v194 = objc_opt_class();
                                              v162 = v161;
                                              self = v160;
                                              v163 = [v162 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v194, @"appSelectionUses"];
                                              v249 = v163;
                                              v199 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v249 forKeys:&v248 count:1];
                                              v202 = 0;
                                              v53 = 0;
                                              *v225 = [v158 initWithDomain:v159 code:2 userInfo:?];
                                              goto LABEL_234;
                                            }

                                            v202 = 0;
                                            v53 = 0;
LABEL_229:
                                            v48 = v235;
                                            v49 = v233;
                                            v12 = v231;
                                            v22 = v216;
                                            goto LABEL_200;
                                          }

                                          v216 = v22;
                                          if (v225)
                                          {
                                            v153 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v154 = *MEMORY[0x1E698F240];
                                            v250 = *MEMORY[0x1E696A578];
                                            v155 = self;
                                            v156 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v193 = objc_opt_class();
                                            v157 = v156;
                                            self = v155;
                                            v202 = [v157 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v193, @"sirikitResponseCode"];
                                            v251 = v202;
                                            v200 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v251 forKeys:&v250 count:1];
                                            v204 = 0;
                                            v53 = 0;
                                            *v225 = [v153 initWithDomain:v154 code:2 userInfo:?];
                                            goto LABEL_229;
                                          }

                                          v204 = 0;
                                          v53 = 0;
LABEL_227:
                                          v48 = v235;
                                          v49 = v233;
                                          v12 = v231;
                                          v22 = v216;
                                          goto LABEL_201;
                                        }

                                        v216 = v22;
                                        if (v225)
                                        {
                                          v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v149 = *MEMORY[0x1E698F240];
                                          v252 = *MEMORY[0x1E696A578];
                                          v150 = self;
                                          v151 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v192 = objc_opt_class();
                                          v152 = v151;
                                          self = v150;
                                          v204 = [v152 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v192, @"mediaParsecCategory"];
                                          v253 = v204;
                                          v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v253 forKeys:&v252 count:1];
                                          v205 = 0;
                                          v53 = 0;
                                          *v225 = [v148 initWithDomain:v149 code:2 userInfo:?];
                                          goto LABEL_227;
                                        }

                                        v205 = 0;
                                        v53 = 0;
LABEL_225:
                                        v48 = v235;
                                        v49 = v233;
                                        v12 = v231;
                                        v22 = v216;
                                        goto LABEL_202;
                                      }

                                      v216 = v22;
                                      if (v225)
                                      {
                                        v143 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v144 = *MEMORY[0x1E698F240];
                                        v254 = *MEMORY[0x1E696A578];
                                        v145 = self;
                                        v146 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v191 = objc_opt_class();
                                        v147 = v146;
                                        self = v145;
                                        v205 = [v147 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v191, @"foregroundBundleRecencyS"];
                                        v255 = v205;
                                        v203 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v255 forKeys:&v254 count:1];
                                        v207 = 0;
                                        v53 = 0;
                                        *v225 = [v143 initWithDomain:v144 code:2 userInfo:?];
                                        goto LABEL_225;
                                      }

                                      v207 = 0;
                                      v53 = 0;
LABEL_223:
                                      v48 = v235;
                                      v49 = v233;
                                      v12 = v231;
                                      v22 = v216;
                                      goto LABEL_203;
                                    }

                                    v216 = v22;
                                    if (v225)
                                    {
                                      v138 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v139 = *MEMORY[0x1E698F240];
                                      v256 = *MEMORY[0x1E696A578];
                                      v140 = self;
                                      v141 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v190 = objc_opt_class();
                                      v142 = v141;
                                      self = v140;
                                      v207 = [v142 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v190, @"isPireneRequest"];
                                      v257 = v207;
                                      v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v257 forKeys:&v256 count:1];
                                      v209 = 0;
                                      v53 = 0;
                                      *v225 = [v138 initWithDomain:v139 code:2 userInfo:?];
                                      goto LABEL_223;
                                    }

                                    v209 = 0;
                                    v53 = 0;
LABEL_193:
                                    v48 = v235;
                                    v49 = v233;
                                    v12 = v231;
                                    v22 = v216;
LABEL_204:

                                    goto LABEL_205;
                                  }

                                  v216 = v22;
                                  if (v225)
                                  {
                                    v133 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v134 = *MEMORY[0x1E698F240];
                                    v258 = *MEMORY[0x1E696A578];
                                    v135 = self;
                                    v136 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v189 = objc_opt_class();
                                    v137 = v136;
                                    self = v135;
                                    v209 = [v137 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v189, @"nowPlayingState"];
                                    v259 = v209;
                                    v208 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v259 forKeys:&v258 count:1];
                                    v211 = 0;
                                    v53 = 0;
                                    *v225 = [v133 initWithDomain:v134 code:2 userInfo:?];
                                    goto LABEL_193;
                                  }

                                  v211 = 0;
                                  v53 = 0;
LABEL_189:
                                  v48 = v235;
                                  v49 = v233;
                                  v12 = v231;
                                  v22 = v216;
LABEL_205:

                                  goto LABEL_206;
                                }

                                v216 = v22;
                                if (v225)
                                {
                                  v128 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v129 = *MEMORY[0x1E698F240];
                                  v260 = *MEMORY[0x1E696A578];
                                  v130 = self;
                                  v131 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v188 = objc_opt_class();
                                  v132 = v131;
                                  self = v130;
                                  v211 = [v132 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v188, @"mediaType"];
                                  v261 = v211;
                                  v210 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v261 forKeys:&v260 count:1];
                                  v213 = 0;
                                  v53 = 0;
                                  *v225 = [v128 initWithDomain:v129 code:2 userInfo:?];
                                  goto LABEL_189;
                                }

                                v213 = 0;
                                v53 = 0;
LABEL_185:
                                v48 = v235;
                                v49 = v233;
                                v12 = v231;
                                v22 = v216;
LABEL_206:

                                goto LABEL_207;
                              }

                              v216 = v22;
                              if (v225)
                              {
                                v123 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v124 = *MEMORY[0x1E698F240];
                                v262 = *MEMORY[0x1E696A578];
                                v125 = self;
                                v126 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v187 = objc_opt_class();
                                v127 = v126;
                                self = v125;
                                v213 = [v127 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v187, @"isClientWorkout"];
                                v263 = v213;
                                v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v263 forKeys:&v262 count:1];
                                v215 = 0;
                                v53 = 0;
                                *v225 = [v123 initWithDomain:v124 code:2 userInfo:?];
                                goto LABEL_185;
                              }

                              v215 = 0;
                              v53 = 0;
LABEL_181:
                              v48 = v235;
                              v49 = v233;
                              v12 = v231;
                              v22 = v216;
LABEL_207:

                              goto LABEL_208;
                            }

                            v216 = v22;
                            if (v225)
                            {
                              v118 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v119 = *MEMORY[0x1E698F240];
                              v264 = *MEMORY[0x1E696A578];
                              v120 = self;
                              v121 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v186 = objc_opt_class();
                              v122 = v121;
                              self = v120;
                              v215 = [v122 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v186, @"isClientNavigating"];
                              v265 = v215;
                              v214 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v265 forKeys:&v264 count:1];
                              v218 = 0;
                              v53 = 0;
                              *v225 = [v118 initWithDomain:v119 code:2 userInfo:?];
                              goto LABEL_181;
                            }

                            v218 = 0;
                            v53 = 0;
LABEL_175:
                            v48 = v235;
                            v49 = v233;
                            v12 = v231;
                            v22 = v216;
LABEL_208:

                            goto LABEL_209;
                          }

                          v216 = v22;
                          if (v225)
                          {
                            v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v114 = *MEMORY[0x1E698F240];
                            v266 = *MEMORY[0x1E696A578];
                            v115 = self;
                            v116 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v185 = objc_opt_class();
                            v117 = v116;
                            self = v115;
                            v218 = [v117 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v185, @"isClientDaylight"];
                            v267 = v218;
                            v217 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
                            v220 = 0;
                            v53 = 0;
                            *v225 = [v113 initWithDomain:v114 code:2 userInfo:?];
                            goto LABEL_175;
                          }

                          v220 = 0;
                          v53 = 0;
                          v48 = v235;
                          v49 = v233;
                          v12 = v231;
LABEL_209:

                          goto LABEL_210;
                        }

                        if (v225)
                        {
                          v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v109 = *MEMORY[0x1E698F240];
                          v268 = *MEMORY[0x1E696A578];
                          v110 = self;
                          v111 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v184 = objc_opt_class();
                          v112 = v111;
                          self = v110;
                          v220 = [v112 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v184, @"rawRegion"];
                          v269 = v220;
                          v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
                          v221 = 0;
                          v53 = 0;
                          *v225 = [v108 initWithDomain:v109 code:2 userInfo:?];
                          v48 = v235;
                          v49 = v233;
                          v12 = v231;
                          goto LABEL_209;
                        }

                        v221 = 0;
                        v53 = 0;
                        v48 = v235;
                        v49 = v233;
                        v12 = v231;
LABEL_210:

                        goto LABEL_211;
                      }

                      if (v225)
                      {
                        v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v103 = *MEMORY[0x1E698F240];
                        v270 = *MEMORY[0x1E696A578];
                        v104 = self;
                        v105 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v183 = objc_opt_class();
                        v106 = v105;
                        self = v104;
                        v221 = [v106 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v183, @"rawLocale"];
                        v271 = v221;
                        v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
                        v223 = 0;
                        v53 = 0;
                        *v225 = [v102 initWithDomain:v103 code:2 userInfo:v107];
                        v22 = v107;
                        v48 = v235;
                        v49 = v233;
                        v12 = v231;
                        goto LABEL_210;
                      }

                      v223 = 0;
                      v53 = 0;
LABEL_159:
                      v48 = v235;
                      v49 = v233;
                      v12 = v231;
LABEL_211:

                      goto LABEL_212;
                    }

                    if (v225)
                    {
                      v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v98 = *MEMORY[0x1E698F240];
                      v272 = *MEMORY[0x1E696A578];
                      v99 = self;
                      v100 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v182 = objc_opt_class();
                      v101 = v100;
                      self = v99;
                      v223 = [v101 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v182, @"rawLanguage"];
                      v273 = v223;
                      v222 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v273 forKeys:&v272 count:1];
                      v226 = 0;
                      v53 = 0;
                      *v225 = [v97 initWithDomain:v98 code:2 userInfo:?];
                      goto LABEL_159;
                    }

                    v226 = 0;
                    v53 = 0;
LABEL_153:
                    v48 = v235;
                    v49 = v233;
                    v12 = v231;
LABEL_212:

                    goto LABEL_213;
                  }

                  if (v225)
                  {
                    v92 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v93 = *MEMORY[0x1E698F240];
                    v274 = *MEMORY[0x1E696A578];
                    v94 = self;
                    v95 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v181 = objc_opt_class();
                    v96 = v95;
                    self = v94;
                    v226 = [v96 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v181, @"nowPlayingLastBundleRecencyS"];
                    v275 = v226;
                    v224 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
                    v227 = 0;
                    v53 = 0;
                    *v225 = [v92 initWithDomain:v93 code:2 userInfo:?];
                    goto LABEL_153;
                  }

                  v227 = 0;
                  v53 = 0;
LABEL_147:
                  v48 = v235;
                  v49 = v233;
                  v12 = v231;
LABEL_213:

                  goto LABEL_214;
                }

                if (v11)
                {
                  v87 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v88 = *MEMORY[0x1E698F240];
                  v276 = *MEMORY[0x1E696A578];
                  v89 = self;
                  v90 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v180 = objc_opt_class();
                  v91 = v90;
                  self = v89;
                  v227 = [v91 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v180, @"isMediaReleaseDatePresent"];
                  v277 = v227;
                  v228 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v277 forKeys:&v276 count:1];
                  v229 = 0;
                  v53 = 0;
                  *v13 = [v87 initWithDomain:v88 code:2 userInfo:?];
                  goto LABEL_147;
                }

                v229 = 0;
                v53 = 0;
LABEL_141:
                v48 = v235;
                v49 = v233;
                v12 = v231;
LABEL_214:

                goto LABEL_215;
              }

              if (v11)
              {
                v82 = objc_alloc(MEMORY[0x1E696ABC0]);
                v83 = self;
                v84 = *MEMORY[0x1E698F240];
                v278 = *MEMORY[0x1E696A578];
                v229 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isMediaNamePresent"];
                v279 = v229;
                v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v279 forKeys:&v278 count:1];
                v86 = v84;
                self = v83;
                v230 = v85;
                v232 = 0;
                v53 = 0;
                *v11 = [v82 initWithDomain:v86 code:2 userInfo:?];
                goto LABEL_141;
              }

              v232 = 0;
              v53 = 0;
              v48 = v235;
              v49 = v233;
              v12 = v231;
LABEL_215:

              goto LABEL_216;
            }

            if (v11)
            {
              v76 = objc_alloc(MEMORY[0x1E696ABC0]);
              v77 = *MEMORY[0x1E698F240];
              v280 = *MEMORY[0x1E696A578];
              v78 = self;
              v79 = objc_alloc(MEMORY[0x1E696AEC0]);
              v179 = objc_opt_class();
              v80 = v79;
              self = v78;
              v232 = [v80 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v179, @"isMediaMoodPresent"];
              v281 = v232;
              v237 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v281 forKeys:&v280 count:1];
              v81 = [v76 initWithDomain:v77 code:2 userInfo:v237];
              v234 = 0;
              v53 = 0;
              *v11 = v81;
              v48 = v235;
              v49 = v233;
              goto LABEL_215;
            }

            v234 = 0;
            v53 = 0;
            v48 = v235;
            v49 = v233;
LABEL_216:

            goto LABEL_217;
          }

          if (a4)
          {
            v67 = objc_alloc(MEMORY[0x1E696ABC0]);
            v68 = a4;
            v69 = *MEMORY[0x1E698F240];
            v282 = *MEMORY[0x1E696A578];
            v70 = self;
            v71 = objc_alloc(MEMORY[0x1E696AEC0]);
            v178 = objc_opt_class();
            v72 = v71;
            self = v70;
            v234 = [v72 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v178, @"isMediaGenrePresent"];
            v283 = v234;
            v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v283 forKeys:&v282 count:1];
            v74 = v69;
            v12 = v73;
            v49 = v10;
            v75 = [v67 initWithDomain:v74 code:2 userInfo:v73];
            v236 = 0;
            v53 = 0;
            *v68 = v75;
            v48 = v235;
            goto LABEL_216;
          }

          v236 = 0;
          v53 = 0;
          v48 = v235;
          v49 = v10;
LABEL_217:

          goto LABEL_218;
        }

        if (a4)
        {
          v60 = objc_alloc(MEMORY[0x1E696ABC0]);
          v61 = *MEMORY[0x1E698F240];
          v284 = *MEMORY[0x1E696A578];
          v62 = self;
          v63 = objc_alloc(MEMORY[0x1E696AEC0]);
          v177 = objc_opt_class();
          v64 = v63;
          self = v62;
          v236 = [v64 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v177, @"isMediaArtistPresent"];
          v285 = v236;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v285 forKeys:&v284 count:1];
          v66 = v61;
          v49 = v65;
          v48 = 0;
          v53 = 0;
          *a4 = [v60 initWithDomain:v66 code:2 userInfo:v65];
          goto LABEL_217;
        }

        v48 = 0;
        v53 = 0;
LABEL_218:

        goto LABEL_219;
      }

      if (a4)
      {
        v57 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = *MEMORY[0x1E698F240];
        v286 = *MEMORY[0x1E696A578];
        v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isMediaAlbumPresent"];
        v287 = v48;
        v238 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v287 forKeys:&v286 count:1];
        v59 = [v57 initWithDomain:v58 code:2 userInfo:?];
        v239 = 0;
        v53 = 0;
        *a4 = v59;
        goto LABEL_218;
      }

      v239 = 0;
      v53 = 0;
LABEL_219:

      goto LABEL_220;
    }

    if (a4)
    {
      v54 = objc_alloc(MEMORY[0x1E696ABC0]);
      v55 = *MEMORY[0x1E698F240];
      v288 = *MEMORY[0x1E696A578];
      v239 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rawClientHourOfDay"];
      v289 = v239;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v289 forKeys:&v288 count:1];
      v56 = [v54 initWithDomain:v55 code:2 userInfo:v7];
      v240 = 0;
      v53 = 0;
      *a4 = v56;
      goto LABEL_219;
    }

    v240 = 0;
    v53 = 0;
LABEL_220:

    goto LABEL_221;
  }

  if (a4)
  {
    v50 = objc_alloc(MEMORY[0x1E696ABC0]);
    v51 = *MEMORY[0x1E698F240];
    v290 = *MEMORY[0x1E696A578];
    v240 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clientDayOfWeek"];
    v291[0] = v240;
    v242 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v291 forKeys:&v290 count:1];
    v52 = [v50 initWithDomain:v51 code:2 userInfo:?];
    v241 = 0;
    v53 = 0;
    *a4 = v52;
    goto LABEL_220;
  }

  v241 = 0;
  v53 = 0;
LABEL_221:

  v171 = *MEMORY[0x1E69E9840];
  return v53;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriMusicInferenceTrainingIndependentSignals *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v28 = a3;
  if (self->_hasClientDayOfWeek)
  {
    clientDayOfWeek = self->_clientDayOfWeek;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawClientHourOfDay)
  {
    rawClientHourOfDay = self->_rawClientHourOfDay;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsMediaAlbumPresent)
  {
    isMediaAlbumPresent = self->_isMediaAlbumPresent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMediaArtistPresent)
  {
    isMediaArtistPresent = self->_isMediaArtistPresent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMediaGenrePresent)
  {
    isMediaGenrePresent = self->_isMediaGenrePresent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMediaMoodPresent)
  {
    isMediaMoodPresent = self->_isMediaMoodPresent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMediaNamePresent)
  {
    isMediaNamePresent = self->_isMediaNamePresent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMediaReleaseDatePresent)
  {
    isMediaReleaseDatePresent = self->_isMediaReleaseDatePresent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasNowPlayingLastBundleRecencyS)
  {
    nowPlayingLastBundleRecencyS = self->_nowPlayingLastBundleRecencyS;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawLanguage)
  {
    rawLanguage = self->_rawLanguage;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasRawLocale)
  {
    rawLocale = self->_rawLocale;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasRawRegion)
  {
    rawRegion = self->_rawRegion;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasIsClientDaylight)
  {
    isClientDaylight = self->_isClientDaylight;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsClientNavigating)
  {
    isClientNavigating = self->_isClientNavigating;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsClientWorkout)
  {
    isClientWorkout = self->_isClientWorkout;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasMediaType)
  {
    mediaType = self->_mediaType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNowPlayingState)
  {
    nowPlayingState = self->_nowPlayingState;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsPireneRequest)
  {
    isPireneRequest = self->_isPireneRequest;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasForegroundBundleRecencyS)
  {
    foregroundBundleRecencyS = self->_foregroundBundleRecencyS;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasMediaParsecCategory)
  {
    mediaParsecCategory = self->_mediaParsecCategory;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSirikitResponseCode)
  {
    sirikitResponseCode = self->_sirikitResponseCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAppSelectionUses)
  {
    appSelectionUses = self->_appSelectionUses;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasModelVersion)
  {
    modelVersion = self->_modelVersion;
    PBDataWriterWriteUint32Field();
  }

  resolutionType = self->_resolutionType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v166.receiver = self;
  v166.super_class = BMSiriMusicInferenceTrainingIndependentSignals;
  v5 = [(BMEventBase *)&v166 init];
  if (!v5)
  {
    goto LABEL_312;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v167) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v167) & 0x7F) << v7;
        if ((LOBYTE(v167) & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v5->_hasClientDayOfWeek = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v18 = [v4 position] + 1;
            if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
            {
              v20 = [v4 data];
              [v20 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v17 |= (LOBYTE(v167) & 0x7F) << v15;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v13 = v16++ >= 9;
            if (v13)
            {
              v21 = 0;
LABEL_262:
              v159 = 56;
              goto LABEL_301;
            }
          }

          if ([v4 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

          goto LABEL_262;
        case 2u:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          v5->_hasRawClientHourOfDay = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v87 = [v4 position] + 1;
            if (v87 >= [v4 position] && (v88 = objc_msgSend(v4, "position") + 1, v88 <= objc_msgSend(v4, "length")))
            {
              v89 = [v4 data];
              [v89 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v86 |= (LOBYTE(v167) & 0x7F) << v84;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            v13 = v85++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_266;
            }
          }

          if ([v4 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v86;
          }

LABEL_266:
          v159 = 60;
          goto LABEL_301;
        case 3u:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v5->_hasIsMediaAlbumPresent = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v63 = [v4 position] + 1;
            if (v63 >= [v4 position] && (v64 = objc_msgSend(v4, "position") + 1, v64 <= objc_msgSend(v4, "length")))
            {
              v65 = [v4 data];
              [v65 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v62 |= (LOBYTE(v167) & 0x7F) << v60;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v13 = v61++ >= 9;
            if (v13)
            {
              LOBYTE(v34) = 0;
              goto LABEL_250;
            }
          }

          v34 = (v62 != 0) & ~[v4 hasError];
LABEL_250:
          v160 = 18;
          goto LABEL_283;
        case 4u:
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v5->_hasIsMediaArtistPresent = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v75 = [v4 position] + 1;
            if (v75 >= [v4 position] && (v76 = objc_msgSend(v4, "position") + 1, v76 <= objc_msgSend(v4, "length")))
            {
              v77 = [v4 data];
              [v77 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v74 |= (LOBYTE(v167) & 0x7F) << v72;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v13 = v73++ >= 9;
            if (v13)
            {
              LOBYTE(v34) = 0;
              goto LABEL_256;
            }
          }

          v34 = (v74 != 0) & ~[v4 hasError];
LABEL_256:
          v160 = 20;
          goto LABEL_283;
        case 5u:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v5->_hasIsMediaGenrePresent = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v45 = [v4 position] + 1;
            if (v45 >= [v4 position] && (v46 = objc_msgSend(v4, "position") + 1, v46 <= objc_msgSend(v4, "length")))
            {
              v47 = [v4 data];
              [v47 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v44 |= (LOBYTE(v167) & 0x7F) << v42;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v13 = v43++ >= 9;
            if (v13)
            {
              LOBYTE(v34) = 0;
              goto LABEL_242;
            }
          }

          v34 = (v44 != 0) & ~[v4 hasError];
LABEL_242:
          v160 = 22;
          goto LABEL_283;
        case 6u:
          v102 = 0;
          v103 = 0;
          v104 = 0;
          v5->_hasIsMediaMoodPresent = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v105 = [v4 position] + 1;
            if (v105 >= [v4 position] && (v106 = objc_msgSend(v4, "position") + 1, v106 <= objc_msgSend(v4, "length")))
            {
              v107 = [v4 data];
              [v107 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v104 |= (LOBYTE(v167) & 0x7F) << v102;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v102 += 7;
            v13 = v103++ >= 9;
            if (v13)
            {
              LOBYTE(v34) = 0;
              goto LABEL_274;
            }
          }

          v34 = (v104 != 0) & ~[v4 hasError];
LABEL_274:
          v160 = 24;
          goto LABEL_283;
        case 7u:
          v120 = 0;
          v121 = 0;
          v122 = 0;
          v5->_hasIsMediaNamePresent = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v123 = [v4 position] + 1;
            if (v123 >= [v4 position] && (v124 = objc_msgSend(v4, "position") + 1, v124 <= objc_msgSend(v4, "length")))
            {
              v125 = [v4 data];
              [v125 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v122 |= (LOBYTE(v167) & 0x7F) << v120;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v120 += 7;
            v13 = v121++ >= 9;
            if (v13)
            {
              LOBYTE(v34) = 0;
              goto LABEL_282;
            }
          }

          v34 = (v122 != 0) & ~[v4 hasError];
LABEL_282:
          v160 = 26;
          goto LABEL_283;
        case 8u:
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v5->_hasIsMediaReleaseDatePresent = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v81 = [v4 position] + 1;
            if (v81 >= [v4 position] && (v82 = objc_msgSend(v4, "position") + 1, v82 <= objc_msgSend(v4, "length")))
            {
              v83 = [v4 data];
              [v83 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v80 |= (LOBYTE(v167) & 0x7F) << v78;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v13 = v79++ >= 9;
            if (v13)
            {
              LOBYTE(v34) = 0;
              goto LABEL_258;
            }
          }

          v34 = (v80 != 0) & ~[v4 hasError];
LABEL_258:
          v160 = 28;
          goto LABEL_283;
        case 9u:
          v134 = 0;
          v135 = 0;
          v136 = 0;
          v5->_hasNowPlayingLastBundleRecencyS = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v137 = [v4 position] + 1;
            if (v137 >= [v4 position] && (v138 = objc_msgSend(v4, "position") + 1, v138 <= objc_msgSend(v4, "length")))
            {
              v139 = [v4 data];
              [v139 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v136 |= (LOBYTE(v167) & 0x7F) << v134;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v134 += 7;
            v13 = v135++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_292;
            }
          }

          if ([v4 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v136;
          }

LABEL_292:
          v159 = 64;
          goto LABEL_301;
        case 0xAu:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v5->_hasRawLanguage = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v57 = [v4 position] + 1;
            if (v57 >= [v4 position] && (v58 = objc_msgSend(v4, "position") + 1, v58 <= objc_msgSend(v4, "length")))
            {
              v59 = [v4 data];
              [v59 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v56 = (((LOBYTE(v167) & 0x7F) << v54) | v56);
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v13 = v55++ >= 9;
            if (v13)
            {
              v41 = 0;
              goto LABEL_248;
            }
          }

          if ([v4 hasError])
          {
            v41 = 0;
          }

          else
          {
            v41 = v56;
          }

LABEL_248:
          v161 = 96;
          goto LABEL_288;
        case 0xBu:
          v128 = 0;
          v129 = 0;
          v130 = 0;
          v5->_hasRawLocale = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v131 = [v4 position] + 1;
            if (v131 >= [v4 position] && (v132 = objc_msgSend(v4, "position") + 1, v132 <= objc_msgSend(v4, "length")))
            {
              v133 = [v4 data];
              [v133 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v130 = (((LOBYTE(v167) & 0x7F) << v128) | v130);
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v128 += 7;
            v13 = v129++ >= 9;
            if (v13)
            {
              v41 = 0;
              goto LABEL_287;
            }
          }

          if ([v4 hasError])
          {
            v41 = 0;
          }

          else
          {
            v41 = v130;
          }

LABEL_287:
          v161 = 104;
          goto LABEL_288;
        case 0xCu:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v5->_hasRawRegion = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v38 = [v4 position] + 1;
            if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
            {
              v40 = [v4 data];
              [v40 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v37 = (((LOBYTE(v167) & 0x7F) << v35) | v37);
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v13 = v36++ >= 9;
            if (v13)
            {
              v41 = 0;
              goto LABEL_240;
            }
          }

          if ([v4 hasError])
          {
            v41 = 0;
          }

          else
          {
            v41 = v37;
          }

LABEL_240:
          v161 = 112;
LABEL_288:
          *(&v5->super.super.isa + v161) = v41;
          goto LABEL_302;
        case 0xDu:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v5->_hasIsClientDaylight = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v51 = [v4 position] + 1;
            if (v51 >= [v4 position] && (v52 = objc_msgSend(v4, "position") + 1, v52 <= objc_msgSend(v4, "length")))
            {
              v53 = [v4 data];
              [v53 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v50 |= (LOBYTE(v167) & 0x7F) << v48;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v13 = v49++ >= 9;
            if (v13)
            {
              LOBYTE(v34) = 0;
              goto LABEL_244;
            }
          }

          v34 = (v50 != 0) & ~[v4 hasError];
LABEL_244:
          v160 = 34;
          goto LABEL_283;
        case 0xEu:
          v114 = 0;
          v115 = 0;
          v116 = 0;
          v5->_hasIsClientNavigating = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v117 = [v4 position] + 1;
            if (v117 >= [v4 position] && (v118 = objc_msgSend(v4, "position") + 1, v118 <= objc_msgSend(v4, "length")))
            {
              v119 = [v4 data];
              [v119 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v116 |= (LOBYTE(v167) & 0x7F) << v114;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v114 += 7;
            v13 = v115++ >= 9;
            if (v13)
            {
              LOBYTE(v34) = 0;
              goto LABEL_280;
            }
          }

          v34 = (v116 != 0) & ~[v4 hasError];
LABEL_280:
          v160 = 36;
          goto LABEL_283;
        case 0xFu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v5->_hasIsClientWorkout = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v31 = [v4 position] + 1;
            if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
            {
              v33 = [v4 data];
              [v33 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v30 |= (LOBYTE(v167) & 0x7F) << v28;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v13 = v29++ >= 9;
            if (v13)
            {
              LOBYTE(v34) = 0;
              goto LABEL_236;
            }
          }

          v34 = (v30 != 0) & ~[v4 hasError];
LABEL_236:
          v160 = 38;
          goto LABEL_283;
        case 0x10u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v5->_hasMediaType = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v69 = [v4 position] + 1;
            if (v69 >= [v4 position] && (v70 = objc_msgSend(v4, "position") + 1, v70 <= objc_msgSend(v4, "length")))
            {
              v71 = [v4 data];
              [v71 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v68 |= (LOBYTE(v167) & 0x7F) << v66;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v13 = v67++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_254;
            }
          }

          if ([v4 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v68;
          }

LABEL_254:
          v159 = 68;
          goto LABEL_301;
        case 0x11u:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v5->_hasNowPlayingState = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v25 = [v4 position] + 1;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
            {
              v27 = [v4 data];
              [v27 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v24 |= (LOBYTE(v167) & 0x7F) << v22;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v13 = v23++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_234;
            }
          }

          if ([v4 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v24;
          }

LABEL_234:
          v159 = 72;
          goto LABEL_301;
        case 0x12u:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v5->_hasIsPireneRequest = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v93 = [v4 position] + 1;
            if (v93 >= [v4 position] && (v94 = objc_msgSend(v4, "position") + 1, v94 <= objc_msgSend(v4, "length")))
            {
              v95 = [v4 data];
              [v95 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v92 |= (LOBYTE(v167) & 0x7F) << v90;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v13 = v91++ >= 9;
            if (v13)
            {
              LOBYTE(v34) = 0;
              goto LABEL_268;
            }
          }

          v34 = (v92 != 0) & ~[v4 hasError];
LABEL_268:
          v160 = 42;
LABEL_283:
          *(&v5->super.super.isa + v160) = v34;
          goto LABEL_302;
        case 0x13u:
          v5->_hasForegroundBundleRecencyS = 1;
          v167 = 0.0;
          v126 = [v4 position] + 8;
          if (v126 >= [v4 position] && (v127 = objc_msgSend(v4, "position") + 8, v127 <= objc_msgSend(v4, "length")))
          {
            v163 = [v4 data];
            [v163 getBytes:&v167 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_foregroundBundleRecencyS = v167;
          goto LABEL_302;
        case 0x14u:
          v146 = 0;
          v147 = 0;
          v148 = 0;
          v5->_hasMediaParsecCategory = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v149 = [v4 position] + 1;
            if (v149 >= [v4 position] && (v150 = objc_msgSend(v4, "position") + 1, v150 <= objc_msgSend(v4, "length")))
            {
              v151 = [v4 data];
              [v151 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v148 |= (LOBYTE(v167) & 0x7F) << v146;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v146 += 7;
            v13 = v147++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_300;
            }
          }

          if ([v4 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v148;
          }

LABEL_300:
          v159 = 76;
          goto LABEL_301;
        case 0x15u:
          v96 = 0;
          v97 = 0;
          v98 = 0;
          v5->_hasSirikitResponseCode = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v99 = [v4 position] + 1;
            if (v99 >= [v4 position] && (v100 = objc_msgSend(v4, "position") + 1, v100 <= objc_msgSend(v4, "length")))
            {
              v101 = [v4 data];
              [v101 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v98 |= (LOBYTE(v167) & 0x7F) << v96;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v96 += 7;
            v13 = v97++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_272;
            }
          }

          if ([v4 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v98;
          }

LABEL_272:
          v159 = 80;
          goto LABEL_301;
        case 0x16u:
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v5->_hasAppSelectionUses = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v111 = [v4 position] + 1;
            if (v111 >= [v4 position] && (v112 = objc_msgSend(v4, "position") + 1, v112 <= objc_msgSend(v4, "length")))
            {
              v113 = [v4 data];
              [v113 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v110 |= (LOBYTE(v167) & 0x7F) << v108;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v108 += 7;
            v13 = v109++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_278;
            }
          }

          if ([v4 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v110;
          }

LABEL_278:
          v159 = 84;
          goto LABEL_301;
        case 0x17u:
          v140 = 0;
          v141 = 0;
          v142 = 0;
          v5->_hasModelVersion = 1;
          while (1)
          {
            LOBYTE(v167) = 0;
            v143 = [v4 position] + 1;
            if (v143 >= [v4 position] && (v144 = objc_msgSend(v4, "position") + 1, v144 <= objc_msgSend(v4, "length")))
            {
              v145 = [v4 data];
              [v145 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v142 |= (LOBYTE(v167) & 0x7F) << v140;
            if ((LOBYTE(v167) & 0x80) == 0)
            {
              break;
            }

            v140 += 7;
            v13 = v141++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_296;
            }
          }

          if ([v4 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v142;
          }

LABEL_296:
          v159 = 88;
LABEL_301:
          *(&v5->super.super.isa + v159) = v21;
          goto LABEL_302;
        case 0x18u:
          v152 = 0;
          v153 = 0;
          v154 = 0;
          break;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_311;
          }

          goto LABEL_302;
      }

      while (1)
      {
        LOBYTE(v167) = 0;
        v155 = [v4 position] + 1;
        if (v155 >= [v4 position] && (v156 = objc_msgSend(v4, "position") + 1, v156 <= objc_msgSend(v4, "length")))
        {
          v157 = [v4 data];
          [v157 getBytes:&v167 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v154 |= (LOBYTE(v167) & 0x7F) << v152;
        if ((LOBYTE(v167) & 0x80) == 0)
        {
          break;
        }

        v152 += 7;
        if (v153++ > 8)
        {
          goto LABEL_306;
        }
      }

      if (([v4 hasError] & 1) != 0 || v154 > 0xA)
      {
LABEL_306:
        LODWORD(v154) = 0;
      }

      v5->_resolutionType = v154;
LABEL_302:
      v162 = [v4 position];
    }

    while (v162 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_311:
    v164 = 0;
  }

  else
  {
LABEL_312:
    v164 = v5;
  }

  return v164;
}

- (NSString)description
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals clientDayOfWeek](self, "clientDayOfWeek")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals rawClientHourOfDay](self, "rawClientHourOfDay")}];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaAlbumPresent](self, "isMediaAlbumPresent")}];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaArtistPresent](self, "isMediaArtistPresent")}];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaGenrePresent](self, "isMediaGenrePresent")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaMoodPresent](self, "isMediaMoodPresent")}];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaNamePresent](self, "isMediaNamePresent")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isMediaReleaseDatePresent](self, "isMediaReleaseDatePresent")}];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals nowPlayingLastBundleRecencyS](self, "nowPlayingLastBundleRecencyS")}];
  v23 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriMusicInferenceTrainingIndependentSignals rawLanguage](self, "rawLanguage")}];
  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriMusicInferenceTrainingIndependentSignals rawLocale](self, "rawLocale")}];
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriMusicInferenceTrainingIndependentSignals rawRegion](self, "rawRegion")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isClientDaylight](self, "isClientDaylight")}];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isClientNavigating](self, "isClientNavigating")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isClientWorkout](self, "isClientWorkout")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals mediaType](self, "mediaType")}];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals nowPlayingState](self, "nowPlayingState")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingIndependentSignals isPireneRequest](self, "isPireneRequest")}];
  v3 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingIndependentSignals *)self foregroundBundleRecencyS];
  v10 = [v3 numberWithDouble:?];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals mediaParsecCategory](self, "mediaParsecCategory")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals sirikitResponseCode](self, "sirikitResponseCode")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingIndependentSignals appSelectionUses](self, "appSelectionUses")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriMusicInferenceTrainingIndependentSignals modelVersion](self, "modelVersion")}];
  v7 = BMSiriMusicInferenceTrainingIndependentSignalsInferenceAppResolutionTypeAsString([(BMSiriMusicInferenceTrainingIndependentSignals *)self resolutionType]);
  v21 = [v20 initWithFormat:@"BMSiriMusicInferenceTrainingIndependentSignals with clientDayOfWeek: %@, rawClientHourOfDay: %@, isMediaAlbumPresent: %@, isMediaArtistPresent: %@, isMediaGenrePresent: %@, isMediaMoodPresent: %@, isMediaNamePresent: %@, isMediaReleaseDatePresent: %@, nowPlayingLastBundleRecencyS: %@, rawLanguage: %@, rawLocale: %@, rawRegion: %@, isClientDaylight: %@, isClientNavigating: %@, isClientWorkout: %@, mediaType: %@, nowPlayingState: %@, isPireneRequest: %@, foregroundBundleRecencyS: %@, mediaParsecCategory: %@, sirikitResponseCode: %@, appSelectionUses: %@, modelVersion: %@, resolutionType: %@", v30, v29, v28, v27, v25, v26, v24, v19, v18, v23, v17, v16, v15, v22, v13, v12, v14, v11, v10, v9, v4, v5, v6, v7];

  return v21;
}

- (BMSiriMusicInferenceTrainingIndependentSignals)initWithClientDayOfWeek:(id)a3 rawClientHourOfDay:(id)a4 isMediaAlbumPresent:(id)a5 isMediaArtistPresent:(id)a6 isMediaGenrePresent:(id)a7 isMediaMoodPresent:(id)a8 isMediaNamePresent:(id)a9 isMediaReleaseDatePresent:(id)a10 nowPlayingLastBundleRecencyS:(id)a11 rawLanguage:(id)a12 rawLocale:(id)a13 rawRegion:(id)a14 isClientDaylight:(id)a15 isClientNavigating:(id)a16 isClientWorkout:(id)a17 mediaType:(id)a18 nowPlayingState:(id)a19 isPireneRequest:(id)a20 foregroundBundleRecencyS:(id)a21 mediaParsecCategory:(id)a22 sirikitResponseCode:(id)a23 appSelectionUses:(id)a24 modelVersion:(id)a25 resolutionType:(int)a26
{
  v70 = a3;
  v69 = a4;
  v31 = a5;
  v68 = a6;
  v67 = a7;
  v66 = a8;
  v65 = a9;
  v64 = a10;
  v32 = a11;
  v33 = v31;
  v63 = a12;
  v62 = a13;
  v61 = a14;
  v60 = a15;
  v59 = a16;
  v58 = a17;
  v57 = a18;
  v34 = a19;
  v35 = a20;
  v36 = a21;
  v37 = a22;
  v38 = a23;
  v39 = a24;
  v40 = a25;
  v71.receiver = self;
  v71.super_class = BMSiriMusicInferenceTrainingIndependentSignals;
  v41 = [(BMEventBase *)&v71 init];
  if (v41)
  {
    v41->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v70)
    {
      v41->_hasClientDayOfWeek = 1;
      v42 = [v70 intValue];
    }

    else
    {
      v41->_hasClientDayOfWeek = 0;
      v42 = -1;
    }

    v41->_clientDayOfWeek = v42;
    if (v69)
    {
      v41->_hasRawClientHourOfDay = 1;
      v43 = [v69 intValue];
    }

    else
    {
      v41->_hasRawClientHourOfDay = 0;
      v43 = -1;
    }

    v41->_rawClientHourOfDay = v43;
    if (v33)
    {
      v41->_hasIsMediaAlbumPresent = 1;
      v41->_isMediaAlbumPresent = [v33 BOOLValue];
    }

    else
    {
      v41->_hasIsMediaAlbumPresent = 0;
      v41->_isMediaAlbumPresent = 0;
    }

    if (v68)
    {
      v41->_hasIsMediaArtistPresent = 1;
      v41->_isMediaArtistPresent = [v68 BOOLValue];
    }

    else
    {
      v41->_hasIsMediaArtistPresent = 0;
      v41->_isMediaArtistPresent = 0;
    }

    if (v67)
    {
      v41->_hasIsMediaGenrePresent = 1;
      v41->_isMediaGenrePresent = [v67 BOOLValue];
    }

    else
    {
      v41->_hasIsMediaGenrePresent = 0;
      v41->_isMediaGenrePresent = 0;
    }

    if (v66)
    {
      v41->_hasIsMediaMoodPresent = 1;
      v41->_isMediaMoodPresent = [v66 BOOLValue];
    }

    else
    {
      v41->_hasIsMediaMoodPresent = 0;
      v41->_isMediaMoodPresent = 0;
    }

    if (v65)
    {
      v41->_hasIsMediaNamePresent = 1;
      v41->_isMediaNamePresent = [v65 BOOLValue];
    }

    else
    {
      v41->_hasIsMediaNamePresent = 0;
      v41->_isMediaNamePresent = 0;
    }

    if (v64)
    {
      v41->_hasIsMediaReleaseDatePresent = 1;
      v41->_isMediaReleaseDatePresent = [v64 BOOLValue];
    }

    else
    {
      v41->_hasIsMediaReleaseDatePresent = 0;
      v41->_isMediaReleaseDatePresent = 0;
    }

    if (v32)
    {
      v41->_hasNowPlayingLastBundleRecencyS = 1;
      v44 = [v32 intValue];
    }

    else
    {
      v41->_hasNowPlayingLastBundleRecencyS = 0;
      v44 = -1;
    }

    v41->_nowPlayingLastBundleRecencyS = v44;
    if (v63)
    {
      v41->_hasRawLanguage = 1;
      v45 = [v63 longLongValue];
    }

    else
    {
      v41->_hasRawLanguage = 0;
      v45 = -1;
    }

    v41->_rawLanguage = v45;
    if (v62)
    {
      v41->_hasRawLocale = 1;
      v46 = [v62 longLongValue];
    }

    else
    {
      v41->_hasRawLocale = 0;
      v46 = -1;
    }

    v41->_rawLocale = v46;
    if (v61)
    {
      v41->_hasRawRegion = 1;
      v47 = [v61 longLongValue];
    }

    else
    {
      v41->_hasRawRegion = 0;
      v47 = -1;
    }

    v41->_rawRegion = v47;
    if (v60)
    {
      v41->_hasIsClientDaylight = 1;
      v41->_isClientDaylight = [v60 BOOLValue];
    }

    else
    {
      v41->_hasIsClientDaylight = 0;
      v41->_isClientDaylight = 0;
    }

    if (v59)
    {
      v41->_hasIsClientNavigating = 1;
      v41->_isClientNavigating = [v59 BOOLValue];
    }

    else
    {
      v41->_hasIsClientNavigating = 0;
      v41->_isClientNavigating = 0;
    }

    if (v58)
    {
      v41->_hasIsClientWorkout = 1;
      v41->_isClientWorkout = [v58 BOOLValue];
    }

    else
    {
      v41->_hasIsClientWorkout = 0;
      v41->_isClientWorkout = 0;
    }

    if (v57)
    {
      v41->_hasMediaType = 1;
      v48 = [v57 intValue];
    }

    else
    {
      v41->_hasMediaType = 0;
      v48 = -1;
    }

    v41->_mediaType = v48;
    if (v34)
    {
      v41->_hasNowPlayingState = 1;
      v49 = [v34 intValue];
    }

    else
    {
      v41->_hasNowPlayingState = 0;
      v49 = -1;
    }

    v41->_nowPlayingState = v49;
    if (v35)
    {
      v41->_hasIsPireneRequest = 1;
      v41->_isPireneRequest = [v35 BOOLValue];
    }

    else
    {
      v41->_hasIsPireneRequest = 0;
      v41->_isPireneRequest = 0;
    }

    if (v36)
    {
      v41->_hasForegroundBundleRecencyS = 1;
      [v36 doubleValue];
    }

    else
    {
      v41->_hasForegroundBundleRecencyS = 0;
      v50 = -1.0;
    }

    v41->_foregroundBundleRecencyS = v50;
    if (v37)
    {
      v41->_hasMediaParsecCategory = 1;
      v51 = [v37 intValue];
    }

    else
    {
      v41->_hasMediaParsecCategory = 0;
      v51 = -1;
    }

    v41->_mediaParsecCategory = v51;
    if (v38)
    {
      v41->_hasSirikitResponseCode = 1;
      v52 = [v38 intValue];
    }

    else
    {
      v41->_hasSirikitResponseCode = 0;
      v52 = -1;
    }

    v41->_sirikitResponseCode = v52;
    if (v39)
    {
      v41->_hasAppSelectionUses = 1;
      v53 = [v39 intValue];
    }

    else
    {
      v41->_hasAppSelectionUses = 0;
      v53 = -1;
    }

    v41->_appSelectionUses = v53;
    if (v40)
    {
      v41->_hasModelVersion = 1;
      v54 = [v40 unsignedIntValue];
    }

    else
    {
      v54 = 0;
      v41->_hasModelVersion = 0;
    }

    v41->_modelVersion = v54;
    v41->_resolutionType = a26;
  }

  return v41;
}

+ (id)protoFields
{
  v29[24] = *MEMORY[0x1E69E9840];
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientDayOfWeek" number:1 type:2 subMessageClass:0];
  v29[0] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawClientHourOfDay" number:2 type:2 subMessageClass:0];
  v29[1] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMediaAlbumPresent" number:3 type:12 subMessageClass:0];
  v29[2] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMediaArtistPresent" number:4 type:12 subMessageClass:0];
  v29[3] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMediaGenrePresent" number:5 type:12 subMessageClass:0];
  v29[4] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMediaMoodPresent" number:6 type:12 subMessageClass:0];
  v29[5] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMediaNamePresent" number:7 type:12 subMessageClass:0];
  v29[6] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMediaReleaseDatePresent" number:8 type:12 subMessageClass:0];
  v29[7] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingLastBundleRecencyS" number:9 type:2 subMessageClass:0];
  v29[8] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawLanguage" number:10 type:3 subMessageClass:0];
  v29[9] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawLocale" number:11 type:3 subMessageClass:0];
  v29[10] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawRegion" number:12 type:3 subMessageClass:0];
  v29[11] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isClientDaylight" number:13 type:12 subMessageClass:0];
  v29[12] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isClientNavigating" number:14 type:12 subMessageClass:0];
  v29[13] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isClientWorkout" number:15 type:12 subMessageClass:0];
  v29[14] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaType" number:16 type:2 subMessageClass:0];
  v29[15] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingState" number:17 type:2 subMessageClass:0];
  v29[16] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPireneRequest" number:18 type:12 subMessageClass:0];
  v29[17] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"foregroundBundleRecencyS" number:19 type:0 subMessageClass:0];
  v29[18] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaParsecCategory" number:20 type:2 subMessageClass:0];
  v29[19] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sirikitResponseCode" number:21 type:2 subMessageClass:0];
  v29[20] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appSelectionUses" number:22 type:2 subMessageClass:0];
  v29[21] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelVersion" number:23 type:4 subMessageClass:0];
  v29[22] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resolutionType" number:24 type:4 subMessageClass:0];
  v29[23] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:24];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v29[24] = *MEMORY[0x1E69E9840];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientDayOfWeek" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawClientHourOfDay" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMediaAlbumPresent" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMediaArtistPresent" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMediaGenrePresent" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMediaMoodPresent" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMediaNamePresent" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMediaReleaseDatePresent" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingLastBundleRecencyS" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:2 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawLanguage" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:3 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawLocale" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:3 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawRegion" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:3 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isClientDaylight" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isClientNavigating" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isClientWorkout" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaType" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingState" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPireneRequest" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"foregroundBundleRecencyS" dataType:1 requestOnly:0 fieldNumber:19 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaParsecCategory" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sirikitResponseCode" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appSelectionUses" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelVersion" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resolutionType" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:4 convertedType:0];
  v29[0] = v28;
  v29[1] = v27;
  v29[2] = v26;
  v29[3] = v25;
  v29[4] = v24;
  v29[5] = v23;
  v29[6] = v22;
  v29[7] = v21;
  v29[8] = v20;
  v29[9] = v19;
  v29[10] = v18;
  v29[11] = v17;
  v29[12] = v16;
  v29[13] = v15;
  v29[14] = v2;
  v29[15] = v3;
  v29[16] = v4;
  v29[17] = v14;
  v29[18] = v5;
  v29[19] = v6;
  v29[20] = v7;
  v29[21] = v13;
  v29[22] = v8;
  v29[23] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:24];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMSiriMusicInferenceTrainingIndependentSignals alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end
@interface BMMediaAnalysisPerLibrary
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMediaAnalysisPerLibrary)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMediaAnalysisPerLibrary)initWithLibraryType:(id)type imageAssetCount:(id)count livePhotoAssetCount:(id)assetCount movieAssetCount:(id)movieAssetCount movieAssetDurations:(id)durations editedMovieCount:(id)movieCount sharedMovieCount:(id)sharedMovieCount favoritedMovieCount:(id)self0 spatialMoviePercentage:(id)self1 cinematicMoviePercentage:(id)self2 slomoMoviePercentage:(id)self3 timelapsePercentage:(id)self4 portraitModePercentage:(id)self5 landscapeModePercentage:(id)self6 withHighlightsPercentage:(id)self7 withPeoplePercentage:(id)self8 withPetsPercentage:(id)self9 withNatureOrNaturalLandmarksPercentage:(id)landmarksPercentage withSkylinePercentage:(id)skylinePercentage wthLandmarksPercentage:(id)wthLandmarksPercentage withActionPercentage:(id)actionPercentage withHighMotionPercentage:(id)motionPercentage highlightsWithPeoplePercentage:(id)withPeoplePercentage highlightsWithPetsPercentage:(id)withPetsPercentage highlightsWithNatureOrNaturalLandmarksPercentage:(id)naturalLandmarksPercentage highlightsWithSkylinePercentage:(id)withSkylinePercentage highlightsWithLandmarksPercentage:(id)withLandmarksPercentage highlightsWithActionPercentage:(id)type0 highlightsWithHighMotionPercentage:(id)type1;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMediaAnalysisPerLibrary

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    libraryType = [(BMMediaAnalysisPerLibrary *)self libraryType];
    libraryType2 = [v5 libraryType];
    v8 = libraryType2;
    if (libraryType == libraryType2)
    {
    }

    else
    {
      libraryType3 = [(BMMediaAnalysisPerLibrary *)self libraryType];
      libraryType4 = [v5 libraryType];
      v11 = [libraryType3 isEqual:libraryType4];

      if (!v11)
      {
        goto LABEL_147;
      }
    }

    if (!-[BMMediaAnalysisPerLibrary hasImageAssetCount](self, "hasImageAssetCount") && ![v5 hasImageAssetCount] || -[BMMediaAnalysisPerLibrary hasImageAssetCount](self, "hasImageAssetCount") && objc_msgSend(v5, "hasImageAssetCount") && (v13 = -[BMMediaAnalysisPerLibrary imageAssetCount](self, "imageAssetCount"), v13 == objc_msgSend(v5, "imageAssetCount")))
    {
      if (!-[BMMediaAnalysisPerLibrary hasLivePhotoAssetCount](self, "hasLivePhotoAssetCount") && ![v5 hasLivePhotoAssetCount] || -[BMMediaAnalysisPerLibrary hasLivePhotoAssetCount](self, "hasLivePhotoAssetCount") && objc_msgSend(v5, "hasLivePhotoAssetCount") && (v14 = -[BMMediaAnalysisPerLibrary livePhotoAssetCount](self, "livePhotoAssetCount"), v14 == objc_msgSend(v5, "livePhotoAssetCount")))
      {
        if (!-[BMMediaAnalysisPerLibrary hasMovieAssetCount](self, "hasMovieAssetCount") && ![v5 hasMovieAssetCount] || -[BMMediaAnalysisPerLibrary hasMovieAssetCount](self, "hasMovieAssetCount") && objc_msgSend(v5, "hasMovieAssetCount") && (v15 = -[BMMediaAnalysisPerLibrary movieAssetCount](self, "movieAssetCount"), v15 == objc_msgSend(v5, "movieAssetCount")))
        {
          if (!-[BMMediaAnalysisPerLibrary hasMovieAssetDurations](self, "hasMovieAssetDurations") && ![v5 hasMovieAssetDurations] || -[BMMediaAnalysisPerLibrary hasMovieAssetDurations](self, "hasMovieAssetDurations") && objc_msgSend(v5, "hasMovieAssetDurations") && (v16 = -[BMMediaAnalysisPerLibrary movieAssetDurations](self, "movieAssetDurations"), v16 == objc_msgSend(v5, "movieAssetDurations")))
          {
            if (!-[BMMediaAnalysisPerLibrary hasEditedMovieCount](self, "hasEditedMovieCount") && ![v5 hasEditedMovieCount] || -[BMMediaAnalysisPerLibrary hasEditedMovieCount](self, "hasEditedMovieCount") && objc_msgSend(v5, "hasEditedMovieCount") && (v17 = -[BMMediaAnalysisPerLibrary editedMovieCount](self, "editedMovieCount"), v17 == objc_msgSend(v5, "editedMovieCount")))
            {
              if (!-[BMMediaAnalysisPerLibrary hasSharedMovieCount](self, "hasSharedMovieCount") && ![v5 hasSharedMovieCount] || -[BMMediaAnalysisPerLibrary hasSharedMovieCount](self, "hasSharedMovieCount") && objc_msgSend(v5, "hasSharedMovieCount") && (v18 = -[BMMediaAnalysisPerLibrary sharedMovieCount](self, "sharedMovieCount"), v18 == objc_msgSend(v5, "sharedMovieCount")))
              {
                if (!-[BMMediaAnalysisPerLibrary hasFavoritedMovieCount](self, "hasFavoritedMovieCount") && ![v5 hasFavoritedMovieCount] || -[BMMediaAnalysisPerLibrary hasFavoritedMovieCount](self, "hasFavoritedMovieCount") && objc_msgSend(v5, "hasFavoritedMovieCount") && (v19 = -[BMMediaAnalysisPerLibrary favoritedMovieCount](self, "favoritedMovieCount"), v19 == objc_msgSend(v5, "favoritedMovieCount")))
                {
                  if (!-[BMMediaAnalysisPerLibrary hasSpatialMoviePercentage](self, "hasSpatialMoviePercentage") && ![v5 hasSpatialMoviePercentage] || -[BMMediaAnalysisPerLibrary hasSpatialMoviePercentage](self, "hasSpatialMoviePercentage") && objc_msgSend(v5, "hasSpatialMoviePercentage") && (v20 = -[BMMediaAnalysisPerLibrary spatialMoviePercentage](self, "spatialMoviePercentage"), v20 == objc_msgSend(v5, "spatialMoviePercentage")))
                  {
                    if (!-[BMMediaAnalysisPerLibrary hasCinematicMoviePercentage](self, "hasCinematicMoviePercentage") && ![v5 hasCinematicMoviePercentage] || -[BMMediaAnalysisPerLibrary hasCinematicMoviePercentage](self, "hasCinematicMoviePercentage") && objc_msgSend(v5, "hasCinematicMoviePercentage") && (v21 = -[BMMediaAnalysisPerLibrary cinematicMoviePercentage](self, "cinematicMoviePercentage"), v21 == objc_msgSend(v5, "cinematicMoviePercentage")))
                    {
                      if (!-[BMMediaAnalysisPerLibrary hasSlomoMoviePercentage](self, "hasSlomoMoviePercentage") && ![v5 hasSlomoMoviePercentage] || -[BMMediaAnalysisPerLibrary hasSlomoMoviePercentage](self, "hasSlomoMoviePercentage") && objc_msgSend(v5, "hasSlomoMoviePercentage") && (v22 = -[BMMediaAnalysisPerLibrary slomoMoviePercentage](self, "slomoMoviePercentage"), v22 == objc_msgSend(v5, "slomoMoviePercentage")))
                      {
                        if (!-[BMMediaAnalysisPerLibrary hasTimelapsePercentage](self, "hasTimelapsePercentage") && ![v5 hasTimelapsePercentage] || -[BMMediaAnalysisPerLibrary hasTimelapsePercentage](self, "hasTimelapsePercentage") && objc_msgSend(v5, "hasTimelapsePercentage") && (v23 = -[BMMediaAnalysisPerLibrary timelapsePercentage](self, "timelapsePercentage"), v23 == objc_msgSend(v5, "timelapsePercentage")))
                        {
                          if (!-[BMMediaAnalysisPerLibrary hasPortraitModePercentage](self, "hasPortraitModePercentage") && ![v5 hasPortraitModePercentage] || -[BMMediaAnalysisPerLibrary hasPortraitModePercentage](self, "hasPortraitModePercentage") && objc_msgSend(v5, "hasPortraitModePercentage") && (v24 = -[BMMediaAnalysisPerLibrary portraitModePercentage](self, "portraitModePercentage"), v24 == objc_msgSend(v5, "portraitModePercentage")))
                          {
                            if (!-[BMMediaAnalysisPerLibrary hasLandscapeModePercentage](self, "hasLandscapeModePercentage") && ![v5 hasLandscapeModePercentage] || -[BMMediaAnalysisPerLibrary hasLandscapeModePercentage](self, "hasLandscapeModePercentage") && objc_msgSend(v5, "hasLandscapeModePercentage") && (v25 = -[BMMediaAnalysisPerLibrary landscapeModePercentage](self, "landscapeModePercentage"), v25 == objc_msgSend(v5, "landscapeModePercentage")))
                            {
                              if (!-[BMMediaAnalysisPerLibrary hasWithHighlightsPercentage](self, "hasWithHighlightsPercentage") && ![v5 hasWithHighlightsPercentage] || -[BMMediaAnalysisPerLibrary hasWithHighlightsPercentage](self, "hasWithHighlightsPercentage") && objc_msgSend(v5, "hasWithHighlightsPercentage") && (v26 = -[BMMediaAnalysisPerLibrary withHighlightsPercentage](self, "withHighlightsPercentage"), v26 == objc_msgSend(v5, "withHighlightsPercentage")))
                              {
                                if (!-[BMMediaAnalysisPerLibrary hasWithPeoplePercentage](self, "hasWithPeoplePercentage") && ![v5 hasWithPeoplePercentage] || -[BMMediaAnalysisPerLibrary hasWithPeoplePercentage](self, "hasWithPeoplePercentage") && objc_msgSend(v5, "hasWithPeoplePercentage") && (v27 = -[BMMediaAnalysisPerLibrary withPeoplePercentage](self, "withPeoplePercentage"), v27 == objc_msgSend(v5, "withPeoplePercentage")))
                                {
                                  if (!-[BMMediaAnalysisPerLibrary hasWithPetsPercentage](self, "hasWithPetsPercentage") && ![v5 hasWithPetsPercentage] || -[BMMediaAnalysisPerLibrary hasWithPetsPercentage](self, "hasWithPetsPercentage") && objc_msgSend(v5, "hasWithPetsPercentage") && (v28 = -[BMMediaAnalysisPerLibrary withPetsPercentage](self, "withPetsPercentage"), v28 == objc_msgSend(v5, "withPetsPercentage")))
                                  {
                                    if (!-[BMMediaAnalysisPerLibrary hasWithNatureOrNaturalLandmarksPercentage](self, "hasWithNatureOrNaturalLandmarksPercentage") && ![v5 hasWithNatureOrNaturalLandmarksPercentage] || -[BMMediaAnalysisPerLibrary hasWithNatureOrNaturalLandmarksPercentage](self, "hasWithNatureOrNaturalLandmarksPercentage") && objc_msgSend(v5, "hasWithNatureOrNaturalLandmarksPercentage") && (v29 = -[BMMediaAnalysisPerLibrary withNatureOrNaturalLandmarksPercentage](self, "withNatureOrNaturalLandmarksPercentage"), v29 == objc_msgSend(v5, "withNatureOrNaturalLandmarksPercentage")))
                                    {
                                      if (!-[BMMediaAnalysisPerLibrary hasWithSkylinePercentage](self, "hasWithSkylinePercentage") && ![v5 hasWithSkylinePercentage] || -[BMMediaAnalysisPerLibrary hasWithSkylinePercentage](self, "hasWithSkylinePercentage") && objc_msgSend(v5, "hasWithSkylinePercentage") && (v30 = -[BMMediaAnalysisPerLibrary withSkylinePercentage](self, "withSkylinePercentage"), v30 == objc_msgSend(v5, "withSkylinePercentage")))
                                      {
                                        if (!-[BMMediaAnalysisPerLibrary hasWthLandmarksPercentage](self, "hasWthLandmarksPercentage") && ![v5 hasWthLandmarksPercentage] || -[BMMediaAnalysisPerLibrary hasWthLandmarksPercentage](self, "hasWthLandmarksPercentage") && objc_msgSend(v5, "hasWthLandmarksPercentage") && (v31 = -[BMMediaAnalysisPerLibrary wthLandmarksPercentage](self, "wthLandmarksPercentage"), v31 == objc_msgSend(v5, "wthLandmarksPercentage")))
                                        {
                                          if (!-[BMMediaAnalysisPerLibrary hasWithActionPercentage](self, "hasWithActionPercentage") && ![v5 hasWithActionPercentage] || -[BMMediaAnalysisPerLibrary hasWithActionPercentage](self, "hasWithActionPercentage") && objc_msgSend(v5, "hasWithActionPercentage") && (v32 = -[BMMediaAnalysisPerLibrary withActionPercentage](self, "withActionPercentage"), v32 == objc_msgSend(v5, "withActionPercentage")))
                                          {
                                            if (!-[BMMediaAnalysisPerLibrary hasWithHighMotionPercentage](self, "hasWithHighMotionPercentage") && ![v5 hasWithHighMotionPercentage] || -[BMMediaAnalysisPerLibrary hasWithHighMotionPercentage](self, "hasWithHighMotionPercentage") && objc_msgSend(v5, "hasWithHighMotionPercentage") && (v33 = -[BMMediaAnalysisPerLibrary withHighMotionPercentage](self, "withHighMotionPercentage"), v33 == objc_msgSend(v5, "withHighMotionPercentage")))
                                            {
                                              if (!-[BMMediaAnalysisPerLibrary hasHighlightsWithPeoplePercentage](self, "hasHighlightsWithPeoplePercentage") && ![v5 hasHighlightsWithPeoplePercentage] || -[BMMediaAnalysisPerLibrary hasHighlightsWithPeoplePercentage](self, "hasHighlightsWithPeoplePercentage") && objc_msgSend(v5, "hasHighlightsWithPeoplePercentage") && (v34 = -[BMMediaAnalysisPerLibrary highlightsWithPeoplePercentage](self, "highlightsWithPeoplePercentage"), v34 == objc_msgSend(v5, "highlightsWithPeoplePercentage")))
                                              {
                                                if (!-[BMMediaAnalysisPerLibrary hasHighlightsWithPetsPercentage](self, "hasHighlightsWithPetsPercentage") && ![v5 hasHighlightsWithPetsPercentage] || -[BMMediaAnalysisPerLibrary hasHighlightsWithPetsPercentage](self, "hasHighlightsWithPetsPercentage") && objc_msgSend(v5, "hasHighlightsWithPetsPercentage") && (v35 = -[BMMediaAnalysisPerLibrary highlightsWithPetsPercentage](self, "highlightsWithPetsPercentage"), v35 == objc_msgSend(v5, "highlightsWithPetsPercentage")))
                                                {
                                                  if (!-[BMMediaAnalysisPerLibrary hasHighlightsWithNatureOrNaturalLandmarksPercentage](self, "hasHighlightsWithNatureOrNaturalLandmarksPercentage") && ![v5 hasHighlightsWithNatureOrNaturalLandmarksPercentage] || -[BMMediaAnalysisPerLibrary hasHighlightsWithNatureOrNaturalLandmarksPercentage](self, "hasHighlightsWithNatureOrNaturalLandmarksPercentage") && objc_msgSend(v5, "hasHighlightsWithNatureOrNaturalLandmarksPercentage") && (v36 = -[BMMediaAnalysisPerLibrary highlightsWithNatureOrNaturalLandmarksPercentage](self, "highlightsWithNatureOrNaturalLandmarksPercentage"), v36 == objc_msgSend(v5, "highlightsWithNatureOrNaturalLandmarksPercentage")))
                                                  {
                                                    if (!-[BMMediaAnalysisPerLibrary hasHighlightsWithSkylinePercentage](self, "hasHighlightsWithSkylinePercentage") && ![v5 hasHighlightsWithSkylinePercentage] || -[BMMediaAnalysisPerLibrary hasHighlightsWithSkylinePercentage](self, "hasHighlightsWithSkylinePercentage") && objc_msgSend(v5, "hasHighlightsWithSkylinePercentage") && (v37 = -[BMMediaAnalysisPerLibrary highlightsWithSkylinePercentage](self, "highlightsWithSkylinePercentage"), v37 == objc_msgSend(v5, "highlightsWithSkylinePercentage")))
                                                    {
                                                      if (!-[BMMediaAnalysisPerLibrary hasHighlightsWithLandmarksPercentage](self, "hasHighlightsWithLandmarksPercentage") && ![v5 hasHighlightsWithLandmarksPercentage] || -[BMMediaAnalysisPerLibrary hasHighlightsWithLandmarksPercentage](self, "hasHighlightsWithLandmarksPercentage") && objc_msgSend(v5, "hasHighlightsWithLandmarksPercentage") && (v38 = -[BMMediaAnalysisPerLibrary highlightsWithLandmarksPercentage](self, "highlightsWithLandmarksPercentage"), v38 == objc_msgSend(v5, "highlightsWithLandmarksPercentage")))
                                                      {
                                                        if (!-[BMMediaAnalysisPerLibrary hasHighlightsWithActionPercentage](self, "hasHighlightsWithActionPercentage") && ![v5 hasHighlightsWithActionPercentage] || -[BMMediaAnalysisPerLibrary hasHighlightsWithActionPercentage](self, "hasHighlightsWithActionPercentage") && objc_msgSend(v5, "hasHighlightsWithActionPercentage") && (v39 = -[BMMediaAnalysisPerLibrary highlightsWithActionPercentage](self, "highlightsWithActionPercentage"), v39 == objc_msgSend(v5, "highlightsWithActionPercentage")))
                                                        {
                                                          if (!-[BMMediaAnalysisPerLibrary hasHighlightsWithHighMotionPercentage](self, "hasHighlightsWithHighMotionPercentage") && ![v5 hasHighlightsWithHighMotionPercentage])
                                                          {
                                                            v12 = 1;
                                                            goto LABEL_148;
                                                          }

                                                          if (-[BMMediaAnalysisPerLibrary hasHighlightsWithHighMotionPercentage](self, "hasHighlightsWithHighMotionPercentage") && [v5 hasHighlightsWithHighMotionPercentage])
                                                          {
                                                            highlightsWithHighMotionPercentage = [(BMMediaAnalysisPerLibrary *)self highlightsWithHighMotionPercentage];
                                                            v12 = highlightsWithHighMotionPercentage == [v5 highlightsWithHighMotionPercentage];
LABEL_148:

                                                            goto LABEL_149;
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_147:
    v12 = 0;
    goto LABEL_148;
  }

  v12 = 0;
LABEL_149:

  return v12;
}

- (id)jsonDictionary
{
  v100[29] = *MEMORY[0x1E69E9840];
  libraryType = [(BMMediaAnalysisPerLibrary *)self libraryType];
  if ([(BMMediaAnalysisPerLibrary *)self hasImageAssetCount])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary imageAssetCount](self, "imageAssetCount")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasLivePhotoAssetCount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary livePhotoAssetCount](self, "livePhotoAssetCount")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasMovieAssetCount])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary movieAssetCount](self, "movieAssetCount")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasMovieAssetDurations])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary movieAssetDurations](self, "movieAssetDurations")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasEditedMovieCount])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary editedMovieCount](self, "editedMovieCount")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasSharedMovieCount])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary sharedMovieCount](self, "sharedMovieCount")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasFavoritedMovieCount])
  {
    v98 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary favoritedMovieCount](self, "favoritedMovieCount")}];
  }

  else
  {
    v98 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasSpatialMoviePercentage])
  {
    v97 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary spatialMoviePercentage](self, "spatialMoviePercentage")}];
  }

  else
  {
    v97 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasCinematicMoviePercentage])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary cinematicMoviePercentage](self, "cinematicMoviePercentage")}];
  }

  else
  {
    v96 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasSlomoMoviePercentage])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary slomoMoviePercentage](self, "slomoMoviePercentage")}];
  }

  else
  {
    v95 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasTimelapsePercentage])
  {
    v94 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary timelapsePercentage](self, "timelapsePercentage")}];
  }

  else
  {
    v94 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasPortraitModePercentage])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary portraitModePercentage](self, "portraitModePercentage")}];
  }

  else
  {
    v93 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasLandscapeModePercentage])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary landscapeModePercentage](self, "landscapeModePercentage")}];
  }

  else
  {
    v92 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasWithHighlightsPercentage])
  {
    v91 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withHighlightsPercentage](self, "withHighlightsPercentage")}];
  }

  else
  {
    v91 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasWithPeoplePercentage])
  {
    v90 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withPeoplePercentage](self, "withPeoplePercentage")}];
  }

  else
  {
    v90 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasWithPetsPercentage])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withPetsPercentage](self, "withPetsPercentage")}];
  }

  else
  {
    v89 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasWithNatureOrNaturalLandmarksPercentage])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withNatureOrNaturalLandmarksPercentage](self, "withNatureOrNaturalLandmarksPercentage")}];
  }

  else
  {
    v88 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasWithSkylinePercentage])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withSkylinePercentage](self, "withSkylinePercentage")}];
  }

  else
  {
    v87 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasWthLandmarksPercentage])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary wthLandmarksPercentage](self, "wthLandmarksPercentage")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasWithActionPercentage])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withActionPercentage](self, "withActionPercentage")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasWithHighMotionPercentage])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withHighMotionPercentage](self, "withHighMotionPercentage")}];
  }

  else
  {
    v84 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasHighlightsWithPeoplePercentage])
  {
    v83 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithPeoplePercentage](self, "highlightsWithPeoplePercentage")}];
  }

  else
  {
    v83 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasHighlightsWithPetsPercentage])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithPetsPercentage](self, "highlightsWithPetsPercentage")}];
  }

  else
  {
    v82 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasHighlightsWithNatureOrNaturalLandmarksPercentage])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithNatureOrNaturalLandmarksPercentage](self, "highlightsWithNatureOrNaturalLandmarksPercentage")}];
  }

  else
  {
    v81 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasHighlightsWithSkylinePercentage])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithSkylinePercentage](self, "highlightsWithSkylinePercentage")}];
  }

  else
  {
    v80 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasHighlightsWithLandmarksPercentage])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithLandmarksPercentage](self, "highlightsWithLandmarksPercentage")}];
  }

  else
  {
    v79 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasHighlightsWithActionPercentage])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithActionPercentage](self, "highlightsWithActionPercentage")}];
  }

  else
  {
    v78 = 0;
  }

  if ([(BMMediaAnalysisPerLibrary *)self hasHighlightsWithHighMotionPercentage])
  {
    v77 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithHighMotionPercentage](self, "highlightsWithHighMotionPercentage")}];
  }

  else
  {
    v77 = 0;
  }

  v99[0] = @"libraryType";
  null = libraryType;
  if (!libraryType)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null;
  v100[0] = null;
  v99[1] = @"imageAssetCount";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null2;
  v100[1] = null2;
  v99[2] = @"livePhotoAssetCount";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null3;
  v100[2] = null3;
  v99[3] = @"movieAssetCount";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null4;
  v100[3] = null4;
  v99[4] = @"movieAssetDurations";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null5;
  v100[4] = null5;
  v99[5] = @"editedMovieCount";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null6;
  v100[5] = null6;
  v99[6] = @"sharedMovieCount";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null7;
  v100[6] = null7;
  v99[7] = @"favoritedMovieCount";
  null8 = v98;
  if (!v98)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v100[7] = null8;
  v99[8] = @"spatialMoviePercentage";
  null9 = v97;
  if (!v97)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v9;
  v100[8] = null9;
  v99[9] = @"cinematicMoviePercentage";
  null10 = v96;
  if (!v96)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v4;
  v60 = null10;
  v100[9] = null10;
  v99[10] = @"slomoMoviePercentage";
  null11 = v95;
  if (!v95)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v5;
  v72 = null11;
  v100[10] = null11;
  v99[11] = @"timelapsePercentage";
  null12 = v94;
  if (!v94)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = libraryType;
  v71 = null12;
  v100[11] = null12;
  v99[12] = @"portraitModePercentage";
  null13 = v93;
  if (!v93)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null13;
  v100[12] = null13;
  v99[13] = @"landscapeModePercentage";
  null14 = v92;
  if (!v92)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null14;
  v100[13] = null14;
  v99[14] = @"withHighlightsPercentage";
  null15 = v91;
  if (!v91)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null15;
  v100[14] = null15;
  v99[15] = @"withPeoplePercentage";
  null16 = v90;
  if (!v90)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null16;
  v100[15] = null16;
  v99[16] = @"withPetsPercentage";
  null17 = v89;
  if (!v89)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null17;
  v100[16] = null17;
  v99[17] = @"withNatureOrNaturalLandmarksPercentage";
  null18 = v88;
  if (!v88)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null18;
  v100[17] = null18;
  v99[18] = @"withSkylinePercentage";
  null19 = v87;
  if (!v87)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null19;
  v100[18] = null19;
  v99[19] = @"wthLandmarksPercentage";
  null20 = v86;
  if (!v86)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null20;
  v100[19] = null20;
  v99[20] = @"withActionPercentage";
  null21 = v85;
  if (!v85)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v8;
  v52 = null21;
  v100[20] = null21;
  v99[21] = @"withHighMotionPercentage";
  null22 = v84;
  if (!v84)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = v25;
  v51 = null22;
  v100[21] = null22;
  v99[22] = @"highlightsWithPeoplePercentage";
  null23 = v83;
  if (!v83)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null9;
  v75 = v6;
  v49 = null23;
  v100[22] = null23;
  v99[23] = @"highlightsWithPetsPercentage";
  null24 = v82;
  v39 = v23;
  if (!v82)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = v21;
  v100[23] = null24;
  v99[24] = @"highlightsWithNatureOrNaturalLandmarksPercentage";
  null25 = v81;
  if (!v81)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null8;
  v100[24] = null25;
  v99[25] = @"highlightsWithSkylinePercentage";
  null26 = v80;
  if (!v80)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v39;
  v100[25] = null26;
  v99[26] = @"highlightsWithLandmarksPercentage";
  null27 = v79;
  if (!v79)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v100[26] = null27;
  v99[27] = @"highlightsWithActionPercentage";
  null28 = v78;
  if (!v78)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v100[27] = null28;
  v99[28] = @"highlightsWithHighMotionPercentage";
  null29 = v77;
  if (!v77)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v100[28] = null29;
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:{29, v49}];
  if (!v77)
  {
  }

  v46 = v27;
  if (!v78)
  {

    v46 = v27;
  }

  if (!v79)
  {

    v46 = v27;
  }

  if (!v80)
  {

    v46 = v27;
  }

  if (!v81)
  {

    v46 = v27;
  }

  if (!v82)
  {

    v46 = v27;
  }

  if (!v83)
  {

    v46 = v27;
  }

  if (!v84)
  {

    v46 = v27;
  }

  if (!v85)
  {

    v46 = v27;
  }

  if (!v86)
  {

    v46 = v27;
  }

  if (!v87)
  {

    v46 = v27;
  }

  if (!v88)
  {

    v46 = v27;
  }

  if (!v89)
  {

    v46 = v27;
  }

  if (!v90)
  {

    v46 = v27;
  }

  if (!v91)
  {

    v46 = v27;
  }

  if (!v92)
  {

    v46 = v27;
  }

  if (!v93)
  {
  }

  if (!v94)
  {
  }

  if (!v95)
  {
  }

  if (!v96)
  {
  }

  if (!v97)
  {
  }

  if (v98)
  {
    if (v19)
    {
      goto LABEL_187;
    }
  }

  else
  {

    if (v19)
    {
LABEL_187:
      if (v74)
      {
        goto LABEL_188;
      }

      goto LABEL_198;
    }
  }

  if (v74)
  {
LABEL_188:
    if (v7)
    {
      goto LABEL_189;
    }

    goto LABEL_199;
  }

LABEL_198:

  if (v7)
  {
LABEL_189:
    if (v75)
    {
      goto LABEL_190;
    }

    goto LABEL_200;
  }

LABEL_199:

  if (v75)
  {
LABEL_190:
    if (v42)
    {
      goto LABEL_191;
    }

    goto LABEL_201;
  }

LABEL_200:

  if (v42)
  {
LABEL_191:
    if (v73)
    {
      goto LABEL_192;
    }

LABEL_202:

    if (v76)
    {
      goto LABEL_193;
    }

    goto LABEL_203;
  }

LABEL_201:

  if (!v73)
  {
    goto LABEL_202;
  }

LABEL_192:
  if (v76)
  {
    goto LABEL_193;
  }

LABEL_203:

LABEL_193:
  v47 = *MEMORY[0x1E69E9840];

  return v70;
}

- (BMMediaAnalysisPerLibrary)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v318[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"libraryType"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v259 = 0;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"imageAssetCount"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v258 = 0;
          v61 = 0;
          goto LABEL_128;
        }

        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = *MEMORY[0x1E698F240];
        v315 = *MEMORY[0x1E696A578];
        v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"imageAssetCount"];
        v316 = v68;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v316 forKeys:&v315 count:1];
        v69 = v67;
        v9 = v68;
        v258 = 0;
        v61 = 0;
        *error = [v66 initWithDomain:v69 code:2 userInfo:v8];
        goto LABEL_127;
      }

      v258 = v7;
    }

    else
    {
      v258 = 0;
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"livePhotoAssetCount"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v9 = 0;
          v61 = 0;
          goto LABEL_127;
        }

        v70 = objc_alloc(MEMORY[0x1E696ABC0]);
        v71 = *MEMORY[0x1E698F240];
        v313 = *MEMORY[0x1E696A578];
        v256 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"livePhotoAssetCount"];
        v314 = v256;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v314 forKeys:&v313 count:1];
        v72 = [v70 initWithDomain:v71 code:2 userInfo:v59];
        v9 = 0;
        v61 = 0;
        *error = v72;
LABEL_126:

LABEL_127:
        goto LABEL_128;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"movieAssetCount"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v59 = v10;
        if (!error)
        {
          v256 = 0;
          v61 = 0;
          goto LABEL_126;
        }

        v257 = objc_alloc(MEMORY[0x1E696ABC0]);
        v253 = *MEMORY[0x1E698F240];
        v311 = *MEMORY[0x1E696A578];
        errorCopy = error;
        v254 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"movieAssetCount"];
        v312 = v254;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v312 forKeys:&v311 count:1];
        v74 = [v257 initWithDomain:v253 code:2 userInfo:v11];
        v256 = 0;
        v61 = 0;
        *errorCopy = v74;
        goto LABEL_125;
      }

      errorCopy3 = error;
      v252 = v10;
      v256 = v10;
    }

    else
    {
      errorCopy3 = error;
      v252 = v10;
      v256 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"movieAssetDurations"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v248 = v11;
        v11 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v254 = 0;
            v61 = 0;
            v59 = v252;
            goto LABEL_125;
          }

          v255 = objc_alloc(MEMORY[0x1E696ABC0]);
          v219 = v9;
          v75 = *MEMORY[0x1E698F240];
          v309 = *MEMORY[0x1E696A578];
          v249 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"movieAssetDurations"];
          v310 = v249;
          v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v310 forKeys:&v309 count:1];
          v77 = v75;
          v9 = v219;
          v250 = v76;
          v78 = [v255 initWithDomain:v77 code:2 userInfo:?];
          v254 = 0;
          v61 = 0;
          *errorCopy3 = v78;
          v59 = v252;
LABEL_124:

LABEL_125:
          goto LABEL_126;
        }

        v248 = v11;
        v11 = v11;
      }
    }

    else
    {
      v248 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"editedMovieCount"];
    v254 = v11;
    v250 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy3)
        {
          v249 = 0;
          v61 = 0;
          v59 = v252;
          v11 = v248;
          goto LABEL_124;
        }

        v79 = objc_alloc(MEMORY[0x1E696ABC0]);
        v220 = v9;
        v80 = *MEMORY[0x1E698F240];
        v307 = *MEMORY[0x1E696A578];
        v246 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"editedMovieCount"];
        v308 = v246;
        v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v308 forKeys:&v307 count:1];
        v82 = v80;
        v9 = v220;
        v247 = v81;
        v249 = 0;
        v61 = 0;
        *errorCopy3 = [v79 initWithDomain:v82 code:2 userInfo:?];
        goto LABEL_183;
      }

      v249 = v13;
    }

    else
    {
      v249 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"sharedMovieCount"];
    v247 = v14;
    if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v246 = 0;
      goto LABEL_33;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v246 = v15;
LABEL_33:
      v16 = [dictionaryCopy objectForKeyedSubscript:@"favoritedMovieCount"];
      if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v216 = v16;
        v244 = 0;
LABEL_36:
        v17 = [dictionaryCopy objectForKeyedSubscript:@"spatialMoviePercentage"];
        v218 = v17;
        if (v17 && (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy3)
            {
              v217 = 0;
              v61 = 0;
              v59 = v252;
              v11 = v248;
              v16 = v216;
              goto LABEL_121;
            }

            v91 = objc_alloc(MEMORY[0x1E696ABC0]);
            v223 = v9;
            v92 = *MEMORY[0x1E698F240];
            v301 = *MEMORY[0x1E696A578];
            v214 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"spatialMoviePercentage"];
            v302 = v214;
            v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v302 forKeys:&v301 count:1];
            v94 = v92;
            v9 = v223;
            v215 = v93;
            v217 = 0;
            v61 = 0;
            *errorCopy3 = [v91 initWithDomain:v94 code:2 userInfo:?];
            goto LABEL_200;
          }

          v217 = v18;
        }

        else
        {
          v217 = 0;
        }

        v19 = [dictionaryCopy objectForKeyedSubscript:@"cinematicMoviePercentage"];
        v215 = v19;
        if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v214 = 0;
          goto LABEL_42;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v214 = v20;
LABEL_42:
          v21 = [dictionaryCopy objectForKeyedSubscript:@"slomoMoviePercentage"];
          v213 = v21;
          if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v212 = 0;
            goto LABEL_45;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v212 = v22;
LABEL_45:
            v23 = [dictionaryCopy objectForKeyedSubscript:@"timelapsePercentage"];
            v211 = v23;
            if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v210 = 0;
              goto LABEL_48;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v210 = v24;
LABEL_48:
              v25 = [dictionaryCopy objectForKeyedSubscript:@"portraitModePercentage"];
              v209 = v25;
              if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v208 = 0;
                goto LABEL_51;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v208 = v26;
LABEL_51:
                v27 = [dictionaryCopy objectForKeyedSubscript:@"landscapeModePercentage"];
                v207 = v27;
                if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v206 = 0;
                  goto LABEL_54;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v206 = v28;
LABEL_54:
                  v29 = [dictionaryCopy objectForKeyedSubscript:@"withHighlightsPercentage"];
                  v205 = v29;
                  if (!v29 || (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v204 = 0;
                    goto LABEL_57;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v204 = v30;
LABEL_57:
                    v31 = [dictionaryCopy objectForKeyedSubscript:@"withPeoplePercentage"];
                    v203 = v31;
                    if (!v31 || (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v202 = 0;
                      goto LABEL_60;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v202 = v32;
LABEL_60:
                      v33 = [dictionaryCopy objectForKeyedSubscript:@"withPetsPercentage"];
                      v200 = v33;
                      if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v201 = 0;
                        goto LABEL_63;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v201 = v34;
LABEL_63:
                        v35 = [dictionaryCopy objectForKeyedSubscript:@"withNatureOrNaturalLandmarksPercentage"];
                        v198 = v35;
                        if (!v35 || (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v199 = 0;
                          goto LABEL_66;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v199 = v36;
LABEL_66:
                          v37 = [dictionaryCopy objectForKeyedSubscript:@"withSkylinePercentage"];
                          v196 = v37;
                          if (!v37 || (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v197 = 0;
                            goto LABEL_69;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v197 = v38;
LABEL_69:
                            v39 = [dictionaryCopy objectForKeyedSubscript:@"wthLandmarksPercentage"];
                            v194 = v39;
                            if (!v39 || (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v195 = 0;
                              goto LABEL_72;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v195 = v40;
LABEL_72:
                              v41 = [dictionaryCopy objectForKeyedSubscript:@"withActionPercentage"];
                              v192 = v41;
                              if (!v41 || (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v193 = 0;
                                goto LABEL_75;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v193 = v42;
LABEL_75:
                                v43 = [dictionaryCopy objectForKeyedSubscript:@"withHighMotionPercentage"];
                                v190 = v43;
                                if (!v43 || (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v191 = 0;
                                  goto LABEL_78;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v191 = v44;
LABEL_78:
                                  v45 = [dictionaryCopy objectForKeyedSubscript:@"highlightsWithPeoplePercentage"];
                                  v188 = v45;
                                  if (!v45 || (v46 = v45, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v189 = 0;
                                    goto LABEL_81;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v189 = v46;
LABEL_81:
                                    v47 = [dictionaryCopy objectForKeyedSubscript:@"highlightsWithPetsPercentage"];
                                    v186 = v47;
                                    if (!v47 || (v48 = v47, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v187 = 0;
                                      goto LABEL_84;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v187 = v48;
LABEL_84:
                                      v49 = [dictionaryCopy objectForKeyedSubscript:@"highlightsWithNatureOrNaturalLandmarksPercentage"];
                                      v184 = v49;
                                      if (!v49 || (v50 = v49, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v185 = 0;
                                        goto LABEL_87;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v185 = v50;
LABEL_87:
                                        v51 = [dictionaryCopy objectForKeyedSubscript:@"highlightsWithSkylinePercentage"];
                                        v181 = v51;
                                        if (!v51 || (v52 = v51, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v183 = 0;
                                          goto LABEL_90;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v183 = v52;
LABEL_90:
                                          v53 = [dictionaryCopy objectForKeyedSubscript:@"highlightsWithLandmarksPercentage"];
                                          v179 = v53;
                                          if (!v53 || (v54 = v53, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v182 = 0;
                                            goto LABEL_93;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v182 = v54;
LABEL_93:
                                            v55 = [dictionaryCopy objectForKeyedSubscript:@"highlightsWithActionPercentage"];
                                            v178 = v55;
                                            if (!v55 || (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v180 = 0;
                                              goto LABEL_96;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v180 = v56;
LABEL_96:
                                              v57 = [dictionaryCopy objectForKeyedSubscript:@"highlightsWithHighMotionPercentage"];
                                              v177 = v57;
                                              if (v57)
                                              {
                                                v58 = v57;
                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  objc_opt_class();
                                                  v59 = v252;
                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                  {
                                                    if (errorCopy3)
                                                    {
                                                      v171 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v243 = v9;
                                                      v172 = *MEMORY[0x1E698F240];
                                                      v261 = *MEMORY[0x1E696A578];
                                                      v173 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"highlightsWithHighMotionPercentage"];
                                                      v262 = v173;
                                                      v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v262 forKeys:&v261 count:1];
                                                      v175 = v171;
                                                      v59 = v252;
                                                      v176 = v172;
                                                      v9 = v243;
                                                      *errorCopy3 = [v175 initWithDomain:v176 code:2 userInfo:v174];
                                                    }

                                                    v60 = 0;
                                                    v61 = 0;
                                                    goto LABEL_101;
                                                  }

                                                  v57 = v58;
                                                  goto LABEL_100;
                                                }

                                                v57 = 0;
                                              }

                                              v59 = v252;
LABEL_100:
                                              v60 = v57;
                                              v61 = [(BMMediaAnalysisPerLibrary *)self initWithLibraryType:v259 imageAssetCount:v258 livePhotoAssetCount:v9 movieAssetCount:v256 movieAssetDurations:v11 editedMovieCount:v249 sharedMovieCount:v246 favoritedMovieCount:v244 spatialMoviePercentage:v217 cinematicMoviePercentage:v214 slomoMoviePercentage:v212 timelapsePercentage:v210 portraitModePercentage:v208 landscapeModePercentage:v206 withHighlightsPercentage:v204 withPeoplePercentage:v202 withPetsPercentage:v201 withNatureOrNaturalLandmarksPercentage:v199 withSkylinePercentage:v197 wthLandmarksPercentage:v195 withActionPercentage:v193 withHighMotionPercentage:v191 highlightsWithPeoplePercentage:v189 highlightsWithPetsPercentage:v187 highlightsWithNatureOrNaturalLandmarksPercentage:v185 highlightsWithSkylinePercentage:v183 highlightsWithLandmarksPercentage:v182 highlightsWithActionPercentage:v180 highlightsWithHighMotionPercentage:v57];
                                              self = v61;
LABEL_101:
                                              v11 = v248;
                                              v16 = v216;

LABEL_102:
LABEL_103:

LABEL_104:
LABEL_105:

LABEL_106:
LABEL_107:

LABEL_108:
LABEL_109:

LABEL_110:
LABEL_111:

LABEL_112:
LABEL_113:

LABEL_114:
LABEL_115:

LABEL_116:
LABEL_117:

LABEL_118:
LABEL_119:

LABEL_120:
LABEL_121:

LABEL_122:
LABEL_123:

                                              goto LABEL_124;
                                            }

                                            if (errorCopy3)
                                            {
                                              v167 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v242 = v9;
                                              v168 = *MEMORY[0x1E698F240];
                                              v263 = *MEMORY[0x1E696A578];
                                              v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"highlightsWithActionPercentage"];
                                              v264 = v60;
                                              v169 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v264 forKeys:&v263 count:1];
                                              v170 = v168;
                                              v9 = v242;
                                              v177 = v169;
                                              v180 = 0;
                                              v61 = 0;
                                              *errorCopy3 = [v167 initWithDomain:v170 code:2 userInfo:?];
                                              v59 = v252;
                                              goto LABEL_101;
                                            }

                                            v180 = 0;
                                            v61 = 0;
LABEL_285:
                                            v59 = v252;
                                            v11 = v248;
                                            v16 = v216;
                                            goto LABEL_102;
                                          }

                                          if (errorCopy3)
                                          {
                                            v163 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v241 = v9;
                                            v164 = *MEMORY[0x1E698F240];
                                            v265 = *MEMORY[0x1E696A578];
                                            v180 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"highlightsWithLandmarksPercentage"];
                                            v266 = v180;
                                            v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
                                            v166 = v164;
                                            v9 = v241;
                                            v178 = v165;
                                            v182 = 0;
                                            v61 = 0;
                                            *errorCopy3 = [v163 initWithDomain:v166 code:2 userInfo:?];
                                            goto LABEL_285;
                                          }

                                          v182 = 0;
                                          v61 = 0;
LABEL_283:
                                          v59 = v252;
                                          v11 = v248;
                                          v16 = v216;
                                          goto LABEL_103;
                                        }

                                        if (errorCopy3)
                                        {
                                          v159 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v240 = v9;
                                          v160 = *MEMORY[0x1E698F240];
                                          v267 = *MEMORY[0x1E696A578];
                                          v182 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"highlightsWithSkylinePercentage"];
                                          v268 = v182;
                                          v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
                                          v162 = v160;
                                          v9 = v240;
                                          v179 = v161;
                                          v183 = 0;
                                          v61 = 0;
                                          *errorCopy3 = [v159 initWithDomain:v162 code:2 userInfo:?];
                                          goto LABEL_283;
                                        }

                                        v183 = 0;
                                        v61 = 0;
LABEL_281:
                                        v59 = v252;
                                        v11 = v248;
                                        v16 = v216;
                                        goto LABEL_104;
                                      }

                                      if (errorCopy3)
                                      {
                                        v155 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v239 = v9;
                                        v156 = *MEMORY[0x1E698F240];
                                        v269 = *MEMORY[0x1E696A578];
                                        v183 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"highlightsWithNatureOrNaturalLandmarksPercentage"];
                                        v270 = v183;
                                        v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v270 forKeys:&v269 count:1];
                                        v158 = v156;
                                        v9 = v239;
                                        v181 = v157;
                                        v185 = 0;
                                        v61 = 0;
                                        *errorCopy3 = [v155 initWithDomain:v158 code:2 userInfo:?];
                                        goto LABEL_281;
                                      }

                                      v185 = 0;
                                      v61 = 0;
LABEL_279:
                                      v59 = v252;
                                      v11 = v248;
                                      v16 = v216;
                                      goto LABEL_105;
                                    }

                                    if (errorCopy3)
                                    {
                                      v151 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v238 = v9;
                                      v152 = *MEMORY[0x1E698F240];
                                      v271 = *MEMORY[0x1E696A578];
                                      v185 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"highlightsWithPetsPercentage"];
                                      v272 = v185;
                                      v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v272 forKeys:&v271 count:1];
                                      v154 = v152;
                                      v9 = v238;
                                      v184 = v153;
                                      v187 = 0;
                                      v61 = 0;
                                      *errorCopy3 = [v151 initWithDomain:v154 code:2 userInfo:?];
                                      goto LABEL_279;
                                    }

                                    v187 = 0;
                                    v61 = 0;
LABEL_277:
                                    v59 = v252;
                                    v11 = v248;
                                    v16 = v216;
                                    goto LABEL_106;
                                  }

                                  if (errorCopy3)
                                  {
                                    v147 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v237 = v9;
                                    v148 = *MEMORY[0x1E698F240];
                                    v273 = *MEMORY[0x1E696A578];
                                    v187 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"highlightsWithPeoplePercentage"];
                                    v274 = v187;
                                    v149 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v274 forKeys:&v273 count:1];
                                    v150 = v148;
                                    v9 = v237;
                                    v186 = v149;
                                    v189 = 0;
                                    v61 = 0;
                                    *errorCopy3 = [v147 initWithDomain:v150 code:2 userInfo:?];
                                    goto LABEL_277;
                                  }

                                  v189 = 0;
                                  v61 = 0;
LABEL_272:
                                  v59 = v252;
                                  v11 = v248;
                                  v16 = v216;
                                  goto LABEL_107;
                                }

                                if (errorCopy3)
                                {
                                  v143 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v236 = v9;
                                  v144 = *MEMORY[0x1E698F240];
                                  v275 = *MEMORY[0x1E696A578];
                                  v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"withHighMotionPercentage"];
                                  v276 = v189;
                                  v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v276 forKeys:&v275 count:1];
                                  v146 = v144;
                                  v9 = v236;
                                  v188 = v145;
                                  v191 = 0;
                                  v61 = 0;
                                  *errorCopy3 = [v143 initWithDomain:v146 code:2 userInfo:?];
                                  goto LABEL_272;
                                }

                                v191 = 0;
                                v61 = 0;
LABEL_268:
                                v59 = v252;
                                v11 = v248;
                                v16 = v216;
                                goto LABEL_108;
                              }

                              if (errorCopy3)
                              {
                                v139 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v235 = v9;
                                v140 = *MEMORY[0x1E698F240];
                                v277 = *MEMORY[0x1E696A578];
                                v191 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"withActionPercentage"];
                                v278 = v191;
                                v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v278 forKeys:&v277 count:1];
                                v142 = v140;
                                v9 = v235;
                                v190 = v141;
                                v193 = 0;
                                v61 = 0;
                                *errorCopy3 = [v139 initWithDomain:v142 code:2 userInfo:?];
                                goto LABEL_268;
                              }

                              v193 = 0;
                              v61 = 0;
LABEL_264:
                              v59 = v252;
                              v11 = v248;
                              v16 = v216;
                              goto LABEL_109;
                            }

                            if (errorCopy3)
                            {
                              v135 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v234 = v9;
                              v136 = *MEMORY[0x1E698F240];
                              v279 = *MEMORY[0x1E696A578];
                              v193 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wthLandmarksPercentage"];
                              v280 = v193;
                              v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v280 forKeys:&v279 count:1];
                              v138 = v136;
                              v9 = v234;
                              v192 = v137;
                              v195 = 0;
                              v61 = 0;
                              *errorCopy3 = [v135 initWithDomain:v138 code:2 userInfo:?];
                              goto LABEL_264;
                            }

                            v195 = 0;
                            v61 = 0;
LABEL_260:
                            v59 = v252;
                            v11 = v248;
                            v16 = v216;
                            goto LABEL_110;
                          }

                          if (errorCopy3)
                          {
                            v131 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v233 = v9;
                            v132 = *MEMORY[0x1E698F240];
                            v281 = *MEMORY[0x1E696A578];
                            v195 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"withSkylinePercentage"];
                            v282 = v195;
                            v133 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v282 forKeys:&v281 count:1];
                            v134 = v132;
                            v9 = v233;
                            v194 = v133;
                            v197 = 0;
                            v61 = 0;
                            *errorCopy3 = [v131 initWithDomain:v134 code:2 userInfo:?];
                            goto LABEL_260;
                          }

                          v197 = 0;
                          v61 = 0;
LABEL_254:
                          v59 = v252;
                          v11 = v248;
                          v16 = v216;
                          goto LABEL_111;
                        }

                        if (errorCopy3)
                        {
                          v127 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v232 = v9;
                          v128 = *MEMORY[0x1E698F240];
                          v283 = *MEMORY[0x1E696A578];
                          v197 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"withNatureOrNaturalLandmarksPercentage"];
                          v284 = v197;
                          v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v284 forKeys:&v283 count:1];
                          v130 = v128;
                          v9 = v232;
                          v196 = v129;
                          v199 = 0;
                          v61 = 0;
                          *errorCopy3 = [v127 initWithDomain:v130 code:2 userInfo:?];
                          goto LABEL_254;
                        }

                        v199 = 0;
                        v61 = 0;
LABEL_248:
                        v59 = v252;
                        v11 = v248;
                        v16 = v216;
                        goto LABEL_112;
                      }

                      if (errorCopy3)
                      {
                        v123 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v231 = v9;
                        v124 = *MEMORY[0x1E698F240];
                        v285 = *MEMORY[0x1E696A578];
                        v199 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"withPetsPercentage"];
                        v286 = v199;
                        v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v286 forKeys:&v285 count:1];
                        v126 = v124;
                        v9 = v231;
                        v198 = v125;
                        v201 = 0;
                        v61 = 0;
                        *errorCopy3 = [v123 initWithDomain:v126 code:2 userInfo:?];
                        goto LABEL_248;
                      }

                      v201 = 0;
                      v61 = 0;
LABEL_242:
                      v59 = v252;
                      v11 = v248;
                      v16 = v216;
                      goto LABEL_113;
                    }

                    if (errorCopy3)
                    {
                      v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v230 = v9;
                      v120 = *MEMORY[0x1E698F240];
                      v287 = *MEMORY[0x1E696A578];
                      v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"withPeoplePercentage"];
                      v288 = v201;
                      v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v288 forKeys:&v287 count:1];
                      v122 = v120;
                      v9 = v230;
                      v200 = v121;
                      v202 = 0;
                      v61 = 0;
                      *errorCopy3 = [v119 initWithDomain:v122 code:2 userInfo:?];
                      goto LABEL_242;
                    }

                    v202 = 0;
                    v61 = 0;
LABEL_236:
                    v59 = v252;
                    v11 = v248;
                    v16 = v216;
                    goto LABEL_114;
                  }

                  if (errorCopy3)
                  {
                    v115 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v229 = v9;
                    v116 = *MEMORY[0x1E698F240];
                    v289 = *MEMORY[0x1E696A578];
                    v202 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"withHighlightsPercentage"];
                    v290 = v202;
                    v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v290 forKeys:&v289 count:1];
                    v118 = v116;
                    v9 = v229;
                    v203 = v117;
                    v204 = 0;
                    v61 = 0;
                    *errorCopy3 = [v115 initWithDomain:v118 code:2 userInfo:?];
                    goto LABEL_236;
                  }

                  v204 = 0;
                  v61 = 0;
LABEL_230:
                  v59 = v252;
                  v11 = v248;
                  v16 = v216;
                  goto LABEL_115;
                }

                if (errorCopy3)
                {
                  v111 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v228 = v9;
                  v112 = *MEMORY[0x1E698F240];
                  v291 = *MEMORY[0x1E696A578];
                  v204 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"landscapeModePercentage"];
                  v292 = v204;
                  v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v292 forKeys:&v291 count:1];
                  v114 = v112;
                  v9 = v228;
                  v205 = v113;
                  v206 = 0;
                  v61 = 0;
                  *errorCopy3 = [v111 initWithDomain:v114 code:2 userInfo:?];
                  goto LABEL_230;
                }

                v206 = 0;
                v61 = 0;
LABEL_224:
                v59 = v252;
                v11 = v248;
                v16 = v216;
                goto LABEL_116;
              }

              if (errorCopy3)
              {
                v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                v227 = v9;
                v108 = *MEMORY[0x1E698F240];
                v293 = *MEMORY[0x1E696A578];
                v206 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"portraitModePercentage"];
                v294 = v206;
                v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v294 forKeys:&v293 count:1];
                v110 = v108;
                v9 = v227;
                v207 = v109;
                v208 = 0;
                v61 = 0;
                *errorCopy3 = [v107 initWithDomain:v110 code:2 userInfo:?];
                goto LABEL_224;
              }

              v208 = 0;
              v61 = 0;
LABEL_218:
              v59 = v252;
              v11 = v248;
              v16 = v216;
              goto LABEL_117;
            }

            if (errorCopy3)
            {
              v103 = objc_alloc(MEMORY[0x1E696ABC0]);
              v226 = v9;
              v104 = *MEMORY[0x1E698F240];
              v295 = *MEMORY[0x1E696A578];
              v208 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timelapsePercentage"];
              v296 = v208;
              v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
              v106 = v104;
              v9 = v226;
              v209 = v105;
              v210 = 0;
              v61 = 0;
              *errorCopy3 = [v103 initWithDomain:v106 code:2 userInfo:?];
              goto LABEL_218;
            }

            v210 = 0;
            v61 = 0;
LABEL_212:
            v59 = v252;
            v11 = v248;
            v16 = v216;
            goto LABEL_118;
          }

          if (errorCopy3)
          {
            v99 = objc_alloc(MEMORY[0x1E696ABC0]);
            v225 = v9;
            v100 = *MEMORY[0x1E698F240];
            v297 = *MEMORY[0x1E696A578];
            v210 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"slomoMoviePercentage"];
            v298 = v210;
            v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
            v102 = v100;
            v9 = v225;
            v211 = v101;
            v212 = 0;
            v61 = 0;
            *errorCopy3 = [v99 initWithDomain:v102 code:2 userInfo:?];
            goto LABEL_212;
          }

          v212 = 0;
          v61 = 0;
LABEL_206:
          v59 = v252;
          v11 = v248;
          v16 = v216;
          goto LABEL_119;
        }

        if (errorCopy3)
        {
          v95 = objc_alloc(MEMORY[0x1E696ABC0]);
          v224 = v9;
          v96 = *MEMORY[0x1E698F240];
          v299 = *MEMORY[0x1E696A578];
          v212 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cinematicMoviePercentage"];
          v300 = v212;
          v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
          v98 = v96;
          v9 = v224;
          v213 = v97;
          v214 = 0;
          v61 = 0;
          *errorCopy3 = [v95 initWithDomain:v98 code:2 userInfo:?];
          goto LABEL_206;
        }

        v214 = 0;
        v61 = 0;
LABEL_200:
        v59 = v252;
        v11 = v248;
        v16 = v216;
        goto LABEL_120;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v216 = v16;
        v244 = v16;
        goto LABEL_36;
      }

      if (errorCopy3)
      {
        v245 = objc_alloc(MEMORY[0x1E696ABC0]);
        v222 = v9;
        v87 = *MEMORY[0x1E698F240];
        v303 = *MEMORY[0x1E696A578];
        v217 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"favoritedMovieCount"];
        v304 = v217;
        v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v304 forKeys:&v303 count:1];
        v89 = v87;
        v9 = v222;
        v218 = v88;
        v90 = [v245 initWithDomain:v89 code:2 userInfo:?];
        v244 = 0;
        v61 = 0;
        *errorCopy3 = v90;
        v59 = v252;
        v11 = v248;
        goto LABEL_121;
      }

      v244 = 0;
      v61 = 0;
LABEL_189:
      v59 = v252;
      v11 = v248;
      goto LABEL_122;
    }

    if (errorCopy3)
    {
      v83 = objc_alloc(MEMORY[0x1E696ABC0]);
      v221 = v9;
      v84 = *MEMORY[0x1E698F240];
      v305 = *MEMORY[0x1E696A578];
      v244 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sharedMovieCount"];
      v306 = v244;
      v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v306 forKeys:&v305 count:1];
      v86 = v84;
      v9 = v221;
      v246 = 0;
      v61 = 0;
      *errorCopy3 = [v83 initWithDomain:v86 code:2 userInfo:v85];
      v16 = v85;
      goto LABEL_189;
    }

    v246 = 0;
    v61 = 0;
LABEL_183:
    v59 = v252;
    v11 = v248;
    goto LABEL_123;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v259 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v259 = 0;
    v61 = 0;
    goto LABEL_129;
  }

  v64 = objc_alloc(MEMORY[0x1E696ABC0]);
  v65 = *MEMORY[0x1E698F240];
  v317 = *MEMORY[0x1E696A578];
  v258 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"libraryType"];
  v318[0] = v258;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v318 forKeys:&v317 count:1];
  v259 = 0;
  v61 = 0;
  *error = [v64 initWithDomain:v65 code:2 userInfo:v7];
LABEL_128:

LABEL_129:
  v62 = *MEMORY[0x1E69E9840];
  return v61;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaAnalysisPerLibrary *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v33 = toCopy;
  if (self->_libraryType)
  {
    PBDataWriterWriteStringField();
    toCopy = v33;
  }

  if (self->_hasImageAssetCount)
  {
    imageAssetCount = self->_imageAssetCount;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasLivePhotoAssetCount)
  {
    livePhotoAssetCount = self->_livePhotoAssetCount;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasMovieAssetCount)
  {
    movieAssetCount = self->_movieAssetCount;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasMovieAssetDurations)
  {
    movieAssetDurations = self->_movieAssetDurations;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasEditedMovieCount)
  {
    editedMovieCount = self->_editedMovieCount;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasSharedMovieCount)
  {
    sharedMovieCount = self->_sharedMovieCount;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasFavoritedMovieCount)
  {
    favoritedMovieCount = self->_favoritedMovieCount;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasSpatialMoviePercentage)
  {
    spatialMoviePercentage = self->_spatialMoviePercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasCinematicMoviePercentage)
  {
    cinematicMoviePercentage = self->_cinematicMoviePercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasSlomoMoviePercentage)
  {
    slomoMoviePercentage = self->_slomoMoviePercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasTimelapsePercentage)
  {
    timelapsePercentage = self->_timelapsePercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasPortraitModePercentage)
  {
    portraitModePercentage = self->_portraitModePercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasLandscapeModePercentage)
  {
    landscapeModePercentage = self->_landscapeModePercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasWithHighlightsPercentage)
  {
    withHighlightsPercentage = self->_withHighlightsPercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasWithPeoplePercentage)
  {
    withPeoplePercentage = self->_withPeoplePercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasWithPetsPercentage)
  {
    withPetsPercentage = self->_withPetsPercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasWithNatureOrNaturalLandmarksPercentage)
  {
    withNatureOrNaturalLandmarksPercentage = self->_withNatureOrNaturalLandmarksPercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasWithSkylinePercentage)
  {
    withSkylinePercentage = self->_withSkylinePercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasWthLandmarksPercentage)
  {
    wthLandmarksPercentage = self->_wthLandmarksPercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasWithActionPercentage)
  {
    withActionPercentage = self->_withActionPercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasWithHighMotionPercentage)
  {
    withHighMotionPercentage = self->_withHighMotionPercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasHighlightsWithPeoplePercentage)
  {
    highlightsWithPeoplePercentage = self->_highlightsWithPeoplePercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasHighlightsWithPetsPercentage)
  {
    highlightsWithPetsPercentage = self->_highlightsWithPetsPercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasHighlightsWithNatureOrNaturalLandmarksPercentage)
  {
    highlightsWithNatureOrNaturalLandmarksPercentage = self->_highlightsWithNatureOrNaturalLandmarksPercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasHighlightsWithSkylinePercentage)
  {
    highlightsWithSkylinePercentage = self->_highlightsWithSkylinePercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasHighlightsWithLandmarksPercentage)
  {
    highlightsWithLandmarksPercentage = self->_highlightsWithLandmarksPercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasHighlightsWithActionPercentage)
  {
    highlightsWithActionPercentage = self->_highlightsWithActionPercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }

  if (self->_hasHighlightsWithHighMotionPercentage)
  {
    highlightsWithHighMotionPercentage = self->_highlightsWithHighMotionPercentage;
    PBDataWriterWriteInt32Field();
    toCopy = v33;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v215.receiver = self;
  v215.super_class = BMMediaAnalysisPerLibrary;
  v5 = [(BMEventBase *)&v215 init];
  if (!v5)
  {
LABEL_388:
    v213 = v5;
    goto LABEL_389;
  }

  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v216 = 0;
      v10 = [fromCopy position] + 1;
      if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v9 |= (v216 & 0x7F) << v7;
      if ((v216 & 0x80) == 0)
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

    v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
    if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v15 = PBReaderReadString();
        libraryType = v5->_libraryType;
        v5->_libraryType = v15;

        continue;
      case 2u:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        v5->_hasImageAssetCount = 1;
        while (1)
        {
          v216 = 0;
          v111 = [fromCopy position] + 1;
          if (v111 >= [fromCopy position] && (v112 = objc_msgSend(fromCopy, "position") + 1, v112 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v110 |= (v216 & 0x7F) << v108;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v13 = v109++ >= 9;
          if (v13)
          {
            v114 = 0;
            goto LABEL_329;
          }
        }

        if ([fromCopy hasError])
        {
          v114 = 0;
        }

        else
        {
          v114 = v110;
        }

LABEL_329:
        v5->_imageAssetCount = v114;
        continue;
      case 3u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v5->_hasLivePhotoAssetCount = 1;
        while (1)
        {
          v216 = 0;
          v83 = [fromCopy position] + 1;
          if (v83 >= [fromCopy position] && (v84 = objc_msgSend(fromCopy, "position") + 1, v84 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v82 |= (v216 & 0x7F) << v80;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v13 = v81++ >= 9;
          if (v13)
          {
            v86 = 0;
            goto LABEL_313;
          }
        }

        if ([fromCopy hasError])
        {
          v86 = 0;
        }

        else
        {
          v86 = v82;
        }

LABEL_313:
        v5->_livePhotoAssetCount = v86;
        continue;
      case 4u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v5->_hasMovieAssetCount = 1;
        while (1)
        {
          v216 = 0;
          v97 = [fromCopy position] + 1;
          if (v97 >= [fromCopy position] && (v98 = objc_msgSend(fromCopy, "position") + 1, v98 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v96 |= (v216 & 0x7F) << v94;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v13 = v95++ >= 9;
          if (v13)
          {
            v100 = 0;
            goto LABEL_321;
          }
        }

        if ([fromCopy hasError])
        {
          v100 = 0;
        }

        else
        {
          v100 = v96;
        }

LABEL_321:
        v5->_movieAssetCount = v100;
        continue;
      case 5u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v5->_hasMovieAssetDurations = 1;
        while (1)
        {
          v216 = 0;
          v48 = [fromCopy position] + 1;
          if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v47 |= (v216 & 0x7F) << v45;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v13 = v46++ >= 9;
          if (v13)
          {
            v51 = 0;
            goto LABEL_293;
          }
        }

        if ([fromCopy hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v47;
        }

LABEL_293:
        v5->_movieAssetDurations = v51;
        continue;
      case 6u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v5->_hasEditedMovieCount = 1;
        while (1)
        {
          v216 = 0;
          v132 = [fromCopy position] + 1;
          if (v132 >= [fromCopy position] && (v133 = objc_msgSend(fromCopy, "position") + 1, v133 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v131 |= (v216 & 0x7F) << v129;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v13 = v130++ >= 9;
          if (v13)
          {
            v135 = 0;
            goto LABEL_341;
          }
        }

        if ([fromCopy hasError])
        {
          v135 = 0;
        }

        else
        {
          v135 = v131;
        }

LABEL_341:
        v5->_editedMovieCount = v135;
        continue;
      case 7u:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v5->_hasSharedMovieCount = 1;
        while (1)
        {
          v216 = 0;
          v153 = [fromCopy position] + 1;
          if (v153 >= [fromCopy position] && (v154 = objc_msgSend(fromCopy, "position") + 1, v154 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v152 |= (v216 & 0x7F) << v150;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v13 = v151++ >= 9;
          if (v13)
          {
            v156 = 0;
            goto LABEL_353;
          }
        }

        if ([fromCopy hasError])
        {
          v156 = 0;
        }

        else
        {
          v156 = v152;
        }

LABEL_353:
        v5->_sharedMovieCount = v156;
        continue;
      case 8u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v5->_hasFavoritedMovieCount = 1;
        while (1)
        {
          v216 = 0;
          v104 = [fromCopy position] + 1;
          if (v104 >= [fromCopy position] && (v105 = objc_msgSend(fromCopy, "position") + 1, v105 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v103 |= (v216 & 0x7F) << v101;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v13 = v102++ >= 9;
          if (v13)
          {
            v107 = 0;
            goto LABEL_325;
          }
        }

        if ([fromCopy hasError])
        {
          v107 = 0;
        }

        else
        {
          v107 = v103;
        }

LABEL_325:
        v5->_favoritedMovieCount = v107;
        continue;
      case 9u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v5->_hasSpatialMoviePercentage = 1;
        while (1)
        {
          v216 = 0;
          v174 = [fromCopy position] + 1;
          if (v174 >= [fromCopy position] && (v175 = objc_msgSend(fromCopy, "position") + 1, v175 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v173 |= (v216 & 0x7F) << v171;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v13 = v172++ >= 9;
          if (v13)
          {
            v177 = 0;
            goto LABEL_365;
          }
        }

        if ([fromCopy hasError])
        {
          v177 = 0;
        }

        else
        {
          v177 = v173;
        }

LABEL_365:
        v5->_spatialMoviePercentage = v177;
        continue;
      case 0xAu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v5->_hasCinematicMoviePercentage = 1;
        while (1)
        {
          v216 = 0;
          v62 = [fromCopy position] + 1;
          if (v62 >= [fromCopy position] && (v63 = objc_msgSend(fromCopy, "position") + 1, v63 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v61 |= (v216 & 0x7F) << v59;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v13 = v60++ >= 9;
          if (v13)
          {
            v65 = 0;
            goto LABEL_301;
          }
        }

        if ([fromCopy hasError])
        {
          v65 = 0;
        }

        else
        {
          v65 = v61;
        }

LABEL_301:
        v5->_cinematicMoviePercentage = v65;
        continue;
      case 0xBu:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        v5->_hasSlomoMoviePercentage = 1;
        while (1)
        {
          v216 = 0;
          v167 = [fromCopy position] + 1;
          if (v167 >= [fromCopy position] && (v168 = objc_msgSend(fromCopy, "position") + 1, v168 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v166 |= (v216 & 0x7F) << v164;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v13 = v165++ >= 9;
          if (v13)
          {
            v170 = 0;
            goto LABEL_361;
          }
        }

        if ([fromCopy hasError])
        {
          v170 = 0;
        }

        else
        {
          v170 = v166;
        }

LABEL_361:
        v5->_slomoMoviePercentage = v170;
        continue;
      case 0xCu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v5->_hasTimelapsePercentage = 1;
        while (1)
        {
          v216 = 0;
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v40 |= (v216 & 0x7F) << v38;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v13 = v39++ >= 9;
          if (v13)
          {
            v44 = 0;
            goto LABEL_289;
          }
        }

        if ([fromCopy hasError])
        {
          v44 = 0;
        }

        else
        {
          v44 = v40;
        }

LABEL_289:
        v5->_timelapsePercentage = v44;
        continue;
      case 0xDu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasPortraitModePercentage = 1;
        while (1)
        {
          v216 = 0;
          v55 = [fromCopy position] + 1;
          if (v55 >= [fromCopy position] && (v56 = objc_msgSend(fromCopy, "position") + 1, v56 <= objc_msgSend(fromCopy, "length")))
          {
            data13 = [fromCopy data];
            [data13 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v54 |= (v216 & 0x7F) << v52;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v13 = v53++ >= 9;
          if (v13)
          {
            v58 = 0;
            goto LABEL_297;
          }
        }

        if ([fromCopy hasError])
        {
          v58 = 0;
        }

        else
        {
          v58 = v54;
        }

LABEL_297:
        v5->_portraitModePercentage = v58;
        continue;
      case 0xEu:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v5->_hasLandscapeModePercentage = 1;
        while (1)
        {
          v216 = 0;
          v146 = [fromCopy position] + 1;
          if (v146 >= [fromCopy position] && (v147 = objc_msgSend(fromCopy, "position") + 1, v147 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v145 |= (v216 & 0x7F) << v143;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v13 = v144++ >= 9;
          if (v13)
          {
            v149 = 0;
            goto LABEL_349;
          }
        }

        if ([fromCopy hasError])
        {
          v149 = 0;
        }

        else
        {
          v149 = v145;
        }

LABEL_349:
        v5->_landscapeModePercentage = v149;
        continue;
      case 0xFu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasWithHighlightsPercentage = 1;
        while (1)
        {
          v216 = 0;
          v34 = [fromCopy position] + 1;
          if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
          {
            data15 = [fromCopy data];
            [data15 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v33 |= (v216 & 0x7F) << v31;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v13 = v32++ >= 9;
          if (v13)
          {
            v37 = 0;
            goto LABEL_285;
          }
        }

        if ([fromCopy hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_285:
        v5->_withHighlightsPercentage = v37;
        continue;
      case 0x10u:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        v5->_hasWithPeoplePercentage = 1;
        while (1)
        {
          v216 = 0;
          v90 = [fromCopy position] + 1;
          if (v90 >= [fromCopy position] && (v91 = objc_msgSend(fromCopy, "position") + 1, v91 <= objc_msgSend(fromCopy, "length")))
          {
            data16 = [fromCopy data];
            [data16 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v89 |= (v216 & 0x7F) << v87;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v13 = v88++ >= 9;
          if (v13)
          {
            v93 = 0;
            goto LABEL_317;
          }
        }

        if ([fromCopy hasError])
        {
          v93 = 0;
        }

        else
        {
          v93 = v89;
        }

LABEL_317:
        v5->_withPeoplePercentage = v93;
        continue;
      case 0x11u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v5->_hasWithPetsPercentage = 1;
        while (1)
        {
          v216 = 0;
          v27 = [fromCopy position] + 1;
          if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
          {
            data17 = [fromCopy data];
            [data17 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v26 |= (v216 & 0x7F) << v24;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v13 = v25++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_281;
          }
        }

        if ([fromCopy hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_281:
        v5->_withPetsPercentage = v30;
        continue;
      case 0x12u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        v5->_hasWithNatureOrNaturalLandmarksPercentage = 1;
        while (1)
        {
          v216 = 0;
          v118 = [fromCopy position] + 1;
          if (v118 >= [fromCopy position] && (v119 = objc_msgSend(fromCopy, "position") + 1, v119 <= objc_msgSend(fromCopy, "length")))
          {
            data18 = [fromCopy data];
            [data18 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v117 |= (v216 & 0x7F) << v115;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v13 = v116++ >= 9;
          if (v13)
          {
            v121 = 0;
            goto LABEL_333;
          }
        }

        if ([fromCopy hasError])
        {
          v121 = 0;
        }

        else
        {
          v121 = v117;
        }

LABEL_333:
        v5->_withNatureOrNaturalLandmarksPercentage = v121;
        continue;
      case 0x13u:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        v5->_hasWithSkylinePercentage = 1;
        while (1)
        {
          v216 = 0;
          v160 = [fromCopy position] + 1;
          if (v160 >= [fromCopy position] && (v161 = objc_msgSend(fromCopy, "position") + 1, v161 <= objc_msgSend(fromCopy, "length")))
          {
            data19 = [fromCopy data];
            [data19 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v159 |= (v216 & 0x7F) << v157;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v13 = v158++ >= 9;
          if (v13)
          {
            v163 = 0;
            goto LABEL_357;
          }
        }

        if ([fromCopy hasError])
        {
          v163 = 0;
        }

        else
        {
          v163 = v159;
        }

LABEL_357:
        v5->_withSkylinePercentage = v163;
        continue;
      case 0x14u:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v5->_hasWthLandmarksPercentage = 1;
        while (1)
        {
          v216 = 0;
          v188 = [fromCopy position] + 1;
          if (v188 >= [fromCopy position] && (v189 = objc_msgSend(fromCopy, "position") + 1, v189 <= objc_msgSend(fromCopy, "length")))
          {
            data20 = [fromCopy data];
            [data20 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v187 |= (v216 & 0x7F) << v185;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v13 = v186++ >= 9;
          if (v13)
          {
            v191 = 0;
            goto LABEL_373;
          }
        }

        if ([fromCopy hasError])
        {
          v191 = 0;
        }

        else
        {
          v191 = v187;
        }

LABEL_373:
        v5->_wthLandmarksPercentage = v191;
        continue;
      case 0x15u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v5->_hasWithActionPercentage = 1;
        while (1)
        {
          v216 = 0;
          v125 = [fromCopy position] + 1;
          if (v125 >= [fromCopy position] && (v126 = objc_msgSend(fromCopy, "position") + 1, v126 <= objc_msgSend(fromCopy, "length")))
          {
            data21 = [fromCopy data];
            [data21 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v124 |= (v216 & 0x7F) << v122;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v13 = v123++ >= 9;
          if (v13)
          {
            v128 = 0;
            goto LABEL_337;
          }
        }

        if ([fromCopy hasError])
        {
          v128 = 0;
        }

        else
        {
          v128 = v124;
        }

LABEL_337:
        v5->_withActionPercentage = v128;
        continue;
      case 0x16u:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        v5->_hasWithHighMotionPercentage = 1;
        while (1)
        {
          v216 = 0;
          v139 = [fromCopy position] + 1;
          if (v139 >= [fromCopy position] && (v140 = objc_msgSend(fromCopy, "position") + 1, v140 <= objc_msgSend(fromCopy, "length")))
          {
            data22 = [fromCopy data];
            [data22 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v138 |= (v216 & 0x7F) << v136;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v13 = v137++ >= 9;
          if (v13)
          {
            v142 = 0;
            goto LABEL_345;
          }
        }

        if ([fromCopy hasError])
        {
          v142 = 0;
        }

        else
        {
          v142 = v138;
        }

LABEL_345:
        v5->_withHighMotionPercentage = v142;
        continue;
      case 0x17u:
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v5->_hasHighlightsWithPeoplePercentage = 1;
        while (1)
        {
          v216 = 0;
          v181 = [fromCopy position] + 1;
          if (v181 >= [fromCopy position] && (v182 = objc_msgSend(fromCopy, "position") + 1, v182 <= objc_msgSend(fromCopy, "length")))
          {
            data23 = [fromCopy data];
            [data23 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v180 |= (v216 & 0x7F) << v178;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v178 += 7;
          v13 = v179++ >= 9;
          if (v13)
          {
            v184 = 0;
            goto LABEL_369;
          }
        }

        if ([fromCopy hasError])
        {
          v184 = 0;
        }

        else
        {
          v184 = v180;
        }

LABEL_369:
        v5->_highlightsWithPeoplePercentage = v184;
        continue;
      case 0x18u:
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v5->_hasHighlightsWithPetsPercentage = 1;
        while (1)
        {
          v216 = 0;
          v195 = [fromCopy position] + 1;
          if (v195 >= [fromCopy position] && (v196 = objc_msgSend(fromCopy, "position") + 1, v196 <= objc_msgSend(fromCopy, "length")))
          {
            data24 = [fromCopy data];
            [data24 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v194 |= (v216 & 0x7F) << v192;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v192 += 7;
          v13 = v193++ >= 9;
          if (v13)
          {
            v198 = 0;
            goto LABEL_377;
          }
        }

        if ([fromCopy hasError])
        {
          v198 = 0;
        }

        else
        {
          v198 = v194;
        }

LABEL_377:
        v5->_highlightsWithPetsPercentage = v198;
        continue;
      case 0x19u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v5->_hasHighlightsWithNatureOrNaturalLandmarksPercentage = 1;
        while (1)
        {
          v216 = 0;
          v76 = [fromCopy position] + 1;
          if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
          {
            data25 = [fromCopy data];
            [data25 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v75 |= (v216 & 0x7F) << v73;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v13 = v74++ >= 9;
          if (v13)
          {
            v79 = 0;
            goto LABEL_309;
          }
        }

        if ([fromCopy hasError])
        {
          v79 = 0;
        }

        else
        {
          v79 = v75;
        }

LABEL_309:
        v5->_highlightsWithNatureOrNaturalLandmarksPercentage = v79;
        continue;
      case 0x1Au:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v5->_hasHighlightsWithSkylinePercentage = 1;
        while (1)
        {
          v216 = 0;
          v69 = [fromCopy position] + 1;
          if (v69 >= [fromCopy position] && (v70 = objc_msgSend(fromCopy, "position") + 1, v70 <= objc_msgSend(fromCopy, "length")))
          {
            data26 = [fromCopy data];
            [data26 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v68 |= (v216 & 0x7F) << v66;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v13 = v67++ >= 9;
          if (v13)
          {
            v72 = 0;
            goto LABEL_305;
          }
        }

        if ([fromCopy hasError])
        {
          v72 = 0;
        }

        else
        {
          v72 = v68;
        }

LABEL_305:
        v5->_highlightsWithSkylinePercentage = v72;
        continue;
      case 0x1Bu:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        v5->_hasHighlightsWithLandmarksPercentage = 1;
        while (1)
        {
          v216 = 0;
          v209 = [fromCopy position] + 1;
          if (v209 >= [fromCopy position] && (v210 = objc_msgSend(fromCopy, "position") + 1, v210 <= objc_msgSend(fromCopy, "length")))
          {
            data27 = [fromCopy data];
            [data27 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v208 |= (v216 & 0x7F) << v206;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v13 = v207++ >= 9;
          if (v13)
          {
            v212 = 0;
            goto LABEL_385;
          }
        }

        if ([fromCopy hasError])
        {
          v212 = 0;
        }

        else
        {
          v212 = v208;
        }

LABEL_385:
        v5->_highlightsWithLandmarksPercentage = v212;
        continue;
      case 0x1Cu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasHighlightsWithActionPercentage = 1;
        while (1)
        {
          v216 = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data28 = [fromCopy data];
            [data28 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (v216 & 0x7F) << v17;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_277;
          }
        }

        if ([fromCopy hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_277:
        v5->_highlightsWithActionPercentage = v23;
        continue;
      case 0x1Du:
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v5->_hasHighlightsWithHighMotionPercentage = 1;
        break;
      default:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_387;
        }

        continue;
    }

    while (1)
    {
      v216 = 0;
      v202 = [fromCopy position] + 1;
      if (v202 >= [fromCopy position] && (v203 = objc_msgSend(fromCopy, "position") + 1, v203 <= objc_msgSend(fromCopy, "length")))
      {
        data29 = [fromCopy data];
        [data29 getBytes:&v216 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v201 |= (v216 & 0x7F) << v199;
      if ((v216 & 0x80) == 0)
      {
        break;
      }

      v199 += 7;
      v13 = v200++ >= 9;
      if (v13)
      {
        v205 = 0;
        goto LABEL_381;
      }
    }

    if ([fromCopy hasError])
    {
      v205 = 0;
    }

    else
    {
      v205 = v201;
    }

LABEL_381:
    v5->_highlightsWithHighMotionPercentage = v205;
  }

  if (([fromCopy hasError] & 1) == 0)
  {
    goto LABEL_388;
  }

LABEL_387:
  v213 = 0;
LABEL_389:

  return v213;
}

- (NSString)description
{
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  libraryType = [(BMMediaAnalysisPerLibrary *)self libraryType];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary imageAssetCount](self, "imageAssetCount")}];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary livePhotoAssetCount](self, "livePhotoAssetCount")}];
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary movieAssetCount](self, "movieAssetCount")}];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary movieAssetDurations](self, "movieAssetDurations")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary editedMovieCount](self, "editedMovieCount")}];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary sharedMovieCount](self, "sharedMovieCount")}];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary favoritedMovieCount](self, "favoritedMovieCount")}];
  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary spatialMoviePercentage](self, "spatialMoviePercentage")}];
  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary cinematicMoviePercentage](self, "cinematicMoviePercentage")}];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary slomoMoviePercentage](self, "slomoMoviePercentage")}];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary timelapsePercentage](self, "timelapsePercentage")}];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary portraitModePercentage](self, "portraitModePercentage")}];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary landscapeModePercentage](self, "landscapeModePercentage")}];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withHighlightsPercentage](self, "withHighlightsPercentage")}];
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withPeoplePercentage](self, "withPeoplePercentage")}];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withPetsPercentage](self, "withPetsPercentage")}];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withNatureOrNaturalLandmarksPercentage](self, "withNatureOrNaturalLandmarksPercentage")}];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withSkylinePercentage](self, "withSkylinePercentage")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary wthLandmarksPercentage](self, "wthLandmarksPercentage")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withActionPercentage](self, "withActionPercentage")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary withHighMotionPercentage](self, "withHighMotionPercentage")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithPeoplePercentage](self, "highlightsWithPeoplePercentage")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithPetsPercentage](self, "highlightsWithPetsPercentage")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithNatureOrNaturalLandmarksPercentage](self, "highlightsWithNatureOrNaturalLandmarksPercentage")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithSkylinePercentage](self, "highlightsWithSkylinePercentage")}];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithLandmarksPercentage](self, "highlightsWithLandmarksPercentage")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithActionPercentage](self, "highlightsWithActionPercentage")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerLibrary highlightsWithHighMotionPercentage](self, "highlightsWithHighMotionPercentage")}];
  v20 = [v19 initWithFormat:@"BMMediaAnalysisPerLibrary with libraryType: %@, imageAssetCount: %@, livePhotoAssetCount: %@, movieAssetCount: %@, movieAssetDurations: %@, editedMovieCount: %@, sharedMovieCount: %@, favoritedMovieCount: %@, spatialMoviePercentage: %@, cinematicMoviePercentage: %@, slomoMoviePercentage: %@, timelapsePercentage: %@, portraitModePercentage: %@, landscapeModePercentage: %@, withHighlightsPercentage: %@, withPeoplePercentage: %@, withPetsPercentage: %@, withNatureOrNaturalLandmarksPercentage: %@, withSkylinePercentage: %@, wthLandmarksPercentage: %@, withActionPercentage: %@, withHighMotionPercentage: %@, highlightsWithPeoplePercentage: %@, highlightsWithPetsPercentage: %@, highlightsWithNatureOrNaturalLandmarksPercentage: %@, highlightsWithSkylinePercentage: %@, highlightsWithLandmarksPercentage: %@, highlightsWithActionPercentage: %@, highlightsWithHighMotionPercentage: %@", libraryType, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9, v8, v7, v3, v4, v5];

  return v20;
}

- (BMMediaAnalysisPerLibrary)initWithLibraryType:(id)type imageAssetCount:(id)count livePhotoAssetCount:(id)assetCount movieAssetCount:(id)movieAssetCount movieAssetDurations:(id)durations editedMovieCount:(id)movieCount sharedMovieCount:(id)sharedMovieCount favoritedMovieCount:(id)self0 spatialMoviePercentage:(id)self1 cinematicMoviePercentage:(id)self2 slomoMoviePercentage:(id)self3 timelapsePercentage:(id)self4 portraitModePercentage:(id)self5 landscapeModePercentage:(id)self6 withHighlightsPercentage:(id)self7 withPeoplePercentage:(id)self8 withPetsPercentage:(id)self9 withNatureOrNaturalLandmarksPercentage:(id)landmarksPercentage withSkylinePercentage:(id)skylinePercentage wthLandmarksPercentage:(id)wthLandmarksPercentage withActionPercentage:(id)actionPercentage withHighMotionPercentage:(id)motionPercentage highlightsWithPeoplePercentage:(id)withPeoplePercentage highlightsWithPetsPercentage:(id)withPetsPercentage highlightsWithNatureOrNaturalLandmarksPercentage:(id)naturalLandmarksPercentage highlightsWithSkylinePercentage:(id)withSkylinePercentage highlightsWithLandmarksPercentage:(id)withLandmarksPercentage highlightsWithActionPercentage:(id)type0 highlightsWithHighMotionPercentage:(id)type1
{
  typeCopy = type;
  countCopy = count;
  assetCountCopy = assetCount;
  movieAssetCountCopy = movieAssetCount;
  durationsCopy = durations;
  movieCountCopy = movieCount;
  sharedMovieCountCopy = sharedMovieCount;
  favoritedMovieCountCopy = favoritedMovieCount;
  percentageCopy = percentage;
  moviePercentageCopy = moviePercentage;
  slomoMoviePercentageCopy = slomoMoviePercentage;
  timelapsePercentageCopy = timelapsePercentage;
  modePercentageCopy = modePercentage;
  landscapeModePercentageCopy = landscapeModePercentage;
  highlightsPercentageCopy = highlightsPercentage;
  peoplePercentageCopy = peoplePercentage;
  petsPercentageCopy = petsPercentage;
  landmarksPercentageCopy = landmarksPercentage;
  skylinePercentageCopy = skylinePercentage;
  wthLandmarksPercentageCopy = wthLandmarksPercentage;
  actionPercentageCopy = actionPercentage;
  motionPercentageCopy = motionPercentage;
  withPeoplePercentageCopy = withPeoplePercentage;
  withPetsPercentageCopy = withPetsPercentage;
  naturalLandmarksPercentageCopy = naturalLandmarksPercentage;
  withSkylinePercentageCopy = withSkylinePercentage;
  withLandmarksPercentageCopy = withLandmarksPercentage;
  withActionPercentageCopy = withActionPercentage;
  highMotionPercentageCopy = highMotionPercentage;
  v97.receiver = self;
  v97.super_class = BMMediaAnalysisPerLibrary;
  v45 = [(BMEventBase *)&v97 init];
  if (v45)
  {
    v45->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v45->_libraryType, type);
    if (countCopy)
    {
      v45->_hasImageAssetCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v45->_hasImageAssetCount = 0;
      intValue = -1;
    }

    v45->_imageAssetCount = intValue;
    if (assetCountCopy)
    {
      v45->_hasLivePhotoAssetCount = 1;
      intValue2 = [assetCountCopy intValue];
    }

    else
    {
      v45->_hasLivePhotoAssetCount = 0;
      intValue2 = -1;
    }

    v45->_livePhotoAssetCount = intValue2;
    if (movieAssetCountCopy)
    {
      v45->_hasMovieAssetCount = 1;
      intValue3 = [movieAssetCountCopy intValue];
    }

    else
    {
      v45->_hasMovieAssetCount = 0;
      intValue3 = -1;
    }

    v45->_movieAssetCount = intValue3;
    if (durationsCopy)
    {
      v45->_hasMovieAssetDurations = 1;
      intValue4 = [durationsCopy intValue];
    }

    else
    {
      v45->_hasMovieAssetDurations = 0;
      intValue4 = -1;
    }

    v45->_movieAssetDurations = intValue4;
    if (movieCountCopy)
    {
      v45->_hasEditedMovieCount = 1;
      intValue5 = [movieCountCopy intValue];
    }

    else
    {
      v45->_hasEditedMovieCount = 0;
      intValue5 = -1;
    }

    v45->_editedMovieCount = intValue5;
    if (sharedMovieCountCopy)
    {
      v45->_hasSharedMovieCount = 1;
      intValue6 = [sharedMovieCountCopy intValue];
    }

    else
    {
      v45->_hasSharedMovieCount = 0;
      intValue6 = -1;
    }

    v45->_sharedMovieCount = intValue6;
    if (favoritedMovieCountCopy)
    {
      v45->_hasFavoritedMovieCount = 1;
      intValue7 = [favoritedMovieCountCopy intValue];
    }

    else
    {
      v45->_hasFavoritedMovieCount = 0;
      intValue7 = -1;
    }

    v45->_favoritedMovieCount = intValue7;
    if (percentageCopy)
    {
      v45->_hasSpatialMoviePercentage = 1;
      intValue8 = [percentageCopy intValue];
    }

    else
    {
      v45->_hasSpatialMoviePercentage = 0;
      intValue8 = -1;
    }

    v45->_spatialMoviePercentage = intValue8;
    if (moviePercentageCopy)
    {
      v45->_hasCinematicMoviePercentage = 1;
      intValue9 = [moviePercentageCopy intValue];
    }

    else
    {
      v45->_hasCinematicMoviePercentage = 0;
      intValue9 = -1;
    }

    v45->_cinematicMoviePercentage = intValue9;
    if (slomoMoviePercentageCopy)
    {
      v45->_hasSlomoMoviePercentage = 1;
      intValue10 = [slomoMoviePercentageCopy intValue];
    }

    else
    {
      v45->_hasSlomoMoviePercentage = 0;
      intValue10 = -1;
    }

    v45->_slomoMoviePercentage = intValue10;
    if (timelapsePercentageCopy)
    {
      v45->_hasTimelapsePercentage = 1;
      intValue11 = [timelapsePercentageCopy intValue];
    }

    else
    {
      v45->_hasTimelapsePercentage = 0;
      intValue11 = -1;
    }

    v45->_timelapsePercentage = intValue11;
    if (modePercentageCopy)
    {
      v45->_hasPortraitModePercentage = 1;
      intValue12 = [modePercentageCopy intValue];
    }

    else
    {
      v45->_hasPortraitModePercentage = 0;
      intValue12 = -1;
    }

    v45->_portraitModePercentage = intValue12;
    if (landscapeModePercentageCopy)
    {
      v45->_hasLandscapeModePercentage = 1;
      intValue13 = [landscapeModePercentageCopy intValue];
    }

    else
    {
      v45->_hasLandscapeModePercentage = 0;
      intValue13 = -1;
    }

    v45->_landscapeModePercentage = intValue13;
    if (highlightsPercentageCopy)
    {
      v45->_hasWithHighlightsPercentage = 1;
      intValue14 = [highlightsPercentageCopy intValue];
    }

    else
    {
      v45->_hasWithHighlightsPercentage = 0;
      intValue14 = -1;
    }

    v45->_withHighlightsPercentage = intValue14;
    if (peoplePercentageCopy)
    {
      v45->_hasWithPeoplePercentage = 1;
      intValue15 = [peoplePercentageCopy intValue];
    }

    else
    {
      v45->_hasWithPeoplePercentage = 0;
      intValue15 = -1;
    }

    v45->_withPeoplePercentage = intValue15;
    if (petsPercentageCopy)
    {
      v45->_hasWithPetsPercentage = 1;
      intValue16 = [petsPercentageCopy intValue];
    }

    else
    {
      v45->_hasWithPetsPercentage = 0;
      intValue16 = -1;
    }

    v45->_withPetsPercentage = intValue16;
    if (landmarksPercentageCopy)
    {
      v45->_hasWithNatureOrNaturalLandmarksPercentage = 1;
      intValue17 = [landmarksPercentageCopy intValue];
    }

    else
    {
      v45->_hasWithNatureOrNaturalLandmarksPercentage = 0;
      intValue17 = -1;
    }

    v45->_withNatureOrNaturalLandmarksPercentage = intValue17;
    if (skylinePercentageCopy)
    {
      v45->_hasWithSkylinePercentage = 1;
      intValue18 = [skylinePercentageCopy intValue];
    }

    else
    {
      v45->_hasWithSkylinePercentage = 0;
      intValue18 = -1;
    }

    v45->_withSkylinePercentage = intValue18;
    if (wthLandmarksPercentageCopy)
    {
      v45->_hasWthLandmarksPercentage = 1;
      intValue19 = [wthLandmarksPercentageCopy intValue];
    }

    else
    {
      v45->_hasWthLandmarksPercentage = 0;
      intValue19 = -1;
    }

    v45->_wthLandmarksPercentage = intValue19;
    if (actionPercentageCopy)
    {
      v45->_hasWithActionPercentage = 1;
      intValue20 = [actionPercentageCopy intValue];
    }

    else
    {
      v45->_hasWithActionPercentage = 0;
      intValue20 = -1;
    }

    v45->_withActionPercentage = intValue20;
    if (motionPercentageCopy)
    {
      v45->_hasWithHighMotionPercentage = 1;
      intValue21 = [motionPercentageCopy intValue];
    }

    else
    {
      v45->_hasWithHighMotionPercentage = 0;
      intValue21 = -1;
    }

    v45->_withHighMotionPercentage = intValue21;
    if (withPeoplePercentageCopy)
    {
      v45->_hasHighlightsWithPeoplePercentage = 1;
      intValue22 = [withPeoplePercentageCopy intValue];
    }

    else
    {
      v45->_hasHighlightsWithPeoplePercentage = 0;
      intValue22 = -1;
    }

    v45->_highlightsWithPeoplePercentage = intValue22;
    if (withPetsPercentageCopy)
    {
      v45->_hasHighlightsWithPetsPercentage = 1;
      intValue23 = [withPetsPercentageCopy intValue];
    }

    else
    {
      v45->_hasHighlightsWithPetsPercentage = 0;
      intValue23 = -1;
    }

    v45->_highlightsWithPetsPercentage = intValue23;
    if (naturalLandmarksPercentageCopy)
    {
      v45->_hasHighlightsWithNatureOrNaturalLandmarksPercentage = 1;
      intValue24 = [naturalLandmarksPercentageCopy intValue];
    }

    else
    {
      v45->_hasHighlightsWithNatureOrNaturalLandmarksPercentage = 0;
      intValue24 = -1;
    }

    v45->_highlightsWithNatureOrNaturalLandmarksPercentage = intValue24;
    if (withSkylinePercentageCopy)
    {
      v45->_hasHighlightsWithSkylinePercentage = 1;
      intValue25 = [withSkylinePercentageCopy intValue];
    }

    else
    {
      v45->_hasHighlightsWithSkylinePercentage = 0;
      intValue25 = -1;
    }

    v45->_highlightsWithSkylinePercentage = intValue25;
    if (withLandmarksPercentageCopy)
    {
      v45->_hasHighlightsWithLandmarksPercentage = 1;
      intValue26 = [withLandmarksPercentageCopy intValue];
    }

    else
    {
      v45->_hasHighlightsWithLandmarksPercentage = 0;
      intValue26 = -1;
    }

    v45->_highlightsWithLandmarksPercentage = intValue26;
    if (withActionPercentageCopy)
    {
      v45->_hasHighlightsWithActionPercentage = 1;
      intValue27 = [withActionPercentageCopy intValue];
    }

    else
    {
      v45->_hasHighlightsWithActionPercentage = 0;
      intValue27 = -1;
    }

    v45->_highlightsWithActionPercentage = intValue27;
    if (highMotionPercentageCopy)
    {
      v45->_hasHighlightsWithHighMotionPercentage = 1;
      intValue28 = [highMotionPercentageCopy intValue];
    }

    else
    {
      v45->_hasHighlightsWithHighMotionPercentage = 0;
      intValue28 = -1;
    }

    v45->_highlightsWithHighMotionPercentage = intValue28;
  }

  return v45;
}

+ (id)protoFields
{
  v34[29] = *MEMORY[0x1E69E9840];
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"libraryType" number:1 type:13 subMessageClass:0];
  v34[0] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"imageAssetCount" number:2 type:2 subMessageClass:0];
  v34[1] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"livePhotoAssetCount" number:3 type:2 subMessageClass:0];
  v34[2] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"movieAssetCount" number:4 type:2 subMessageClass:0];
  v34[3] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"movieAssetDurations" number:5 type:2 subMessageClass:0];
  v34[4] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"editedMovieCount" number:6 type:2 subMessageClass:0];
  v34[5] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sharedMovieCount" number:7 type:2 subMessageClass:0];
  v34[6] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"favoritedMovieCount" number:8 type:2 subMessageClass:0];
  v34[7] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spatialMoviePercentage" number:9 type:2 subMessageClass:0];
  v34[8] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cinematicMoviePercentage" number:10 type:2 subMessageClass:0];
  v34[9] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"slomoMoviePercentage" number:11 type:2 subMessageClass:0];
  v34[10] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timelapsePercentage" number:12 type:2 subMessageClass:0];
  v34[11] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"portraitModePercentage" number:13 type:2 subMessageClass:0];
  v34[12] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"landscapeModePercentage" number:14 type:2 subMessageClass:0];
  v34[13] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"withHighlightsPercentage" number:15 type:2 subMessageClass:0];
  v34[14] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"withPeoplePercentage" number:16 type:2 subMessageClass:0];
  v34[15] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"withPetsPercentage" number:17 type:2 subMessageClass:0];
  v34[16] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"withNatureOrNaturalLandmarksPercentage" number:18 type:2 subMessageClass:0];
  v34[17] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"withSkylinePercentage" number:19 type:2 subMessageClass:0];
  v34[18] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wthLandmarksPercentage" number:20 type:2 subMessageClass:0];
  v34[19] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"withActionPercentage" number:21 type:2 subMessageClass:0];
  v34[20] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"withHighMotionPercentage" number:22 type:2 subMessageClass:0];
  v34[21] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightsWithPeoplePercentage" number:23 type:2 subMessageClass:0];
  v34[22] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightsWithPetsPercentage" number:24 type:2 subMessageClass:0];
  v34[23] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightsWithNatureOrNaturalLandmarksPercentage" number:25 type:2 subMessageClass:0];
  v34[24] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightsWithSkylinePercentage" number:26 type:2 subMessageClass:0];
  v34[25] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightsWithLandmarksPercentage" number:27 type:2 subMessageClass:0];
  v34[26] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightsWithActionPercentage" number:28 type:2 subMessageClass:0];
  v34[27] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightsWithHighMotionPercentage" number:29 type:2 subMessageClass:0];
  v34[28] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:29];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v34[29] = *MEMORY[0x1E69E9840];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"libraryType" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"imageAssetCount" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livePhotoAssetCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"movieAssetCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"movieAssetDurations" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"editedMovieCount" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sharedMovieCount" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"favoritedMovieCount" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spatialMoviePercentage" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:2 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cinematicMoviePercentage" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"slomoMoviePercentage" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timelapsePercentage" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:2 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"portraitModePercentage" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:2 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"landscapeModePercentage" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:2 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"withHighlightsPercentage" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:2 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"withPeoplePercentage" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"withPetsPercentage" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:2 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"withNatureOrNaturalLandmarksPercentage" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:2 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"withSkylinePercentage" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:2 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wthLandmarksPercentage" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"withActionPercentage" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"withHighMotionPercentage" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightsWithPeoplePercentage" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightsWithPetsPercentage" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightsWithNatureOrNaturalLandmarksPercentage" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightsWithSkylinePercentage" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightsWithLandmarksPercentage" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:2 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightsWithActionPercentage" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightsWithHighMotionPercentage" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:2 convertedType:0];
  v34[0] = v33;
  v34[1] = v32;
  v34[2] = v31;
  v34[3] = v30;
  v34[4] = v29;
  v34[5] = v28;
  v34[6] = v27;
  v34[7] = v26;
  v34[8] = v25;
  v34[9] = v24;
  v34[10] = v23;
  v34[11] = v22;
  v34[12] = v21;
  v34[13] = v20;
  v34[14] = v19;
  v34[15] = v18;
  v34[16] = v17;
  v34[17] = v16;
  v34[18] = v15;
  v34[19] = v2;
  v34[20] = v3;
  v34[21] = v4;
  v34[22] = v14;
  v34[23] = v13;
  v34[24] = v5;
  v34[25] = v6;
  v34[26] = v7;
  v34[27] = v12;
  v34[28] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:29];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMMediaAnalysisPerLibrary alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end
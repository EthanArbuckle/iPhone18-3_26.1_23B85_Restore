@interface BMPerBatchDomainSpecificAssetCounts
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPerBatchDomainSpecificAssetCounts)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMPerBatchDomainSpecificAssetCounts)initWithParsedAssetCount:(id)count anyDomainAssetCount:(id)assetCount artAssetCount:(id)artAssetCount natureAssetCount:(id)natureAssetCount animalsAssetCount:(id)animalsAssetCount birdsAssetCount:(id)birdsAssetCount insectsAssetCount:(id)insectsAssetCount reptilesAssetCount:(id)self0 mammalsAssetCount:(id)self1 landmarkAssetCount:(id)self2 naturalLandmarkAssetCount:(id)self3 mediaAssetCount:(id)self4 bookAssetCount:(id)self5 albumAssetCount:(id)self6 catsAssetCount:(id)self7 dogsAssetCount:(id)self8 apparelAssetCount:(id)self9 foodAssetCount:(id)foodAssetCount storefrontAssetCount:(id)storefrontAssetCount signSymbolAssetCount:(id)symbolAssetCount laundryCareSymbolAssetCount:(id)careSymbolAssetCount autoSymbolAssetCount:(id)autoSymbolAssetCount brandLogoSymbolAssetCount:(id)logoSymbolAssetCount object2DAssetCount:(id)dAssetCount barcodeDetectionAssetCount:(id)detectionAssetCount sculptureAssetCount:(id)sculptureAssetCount skylineAssetCount:(id)skylineAssetCount;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPerBatchDomainSpecificAssetCounts

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMPerBatchDomainSpecificAssetCounts hasParsedAssetCount](self, "hasParsedAssetCount") || [v5 hasParsedAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasParsedAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasParsedAssetCount])
      {
        goto LABEL_138;
      }

      parsedAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self parsedAssetCount];
      if (parsedAssetCount != [v5 parsedAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasAnyDomainAssetCount](self, "hasAnyDomainAssetCount") || [v5 hasAnyDomainAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasAnyDomainAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasAnyDomainAssetCount])
      {
        goto LABEL_138;
      }

      anyDomainAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self anyDomainAssetCount];
      if (anyDomainAssetCount != [v5 anyDomainAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasArtAssetCount](self, "hasArtAssetCount") || [v5 hasArtAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasArtAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasArtAssetCount])
      {
        goto LABEL_138;
      }

      artAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self artAssetCount];
      if (artAssetCount != [v5 artAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasNatureAssetCount](self, "hasNatureAssetCount") || [v5 hasNatureAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasNatureAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasNatureAssetCount])
      {
        goto LABEL_138;
      }

      natureAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self natureAssetCount];
      if (natureAssetCount != [v5 natureAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasAnimalsAssetCount](self, "hasAnimalsAssetCount") || [v5 hasAnimalsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasAnimalsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasAnimalsAssetCount])
      {
        goto LABEL_138;
      }

      animalsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self animalsAssetCount];
      if (animalsAssetCount != [v5 animalsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasBirdsAssetCount](self, "hasBirdsAssetCount") || [v5 hasBirdsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasBirdsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasBirdsAssetCount])
      {
        goto LABEL_138;
      }

      birdsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self birdsAssetCount];
      if (birdsAssetCount != [v5 birdsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasInsectsAssetCount](self, "hasInsectsAssetCount") || [v5 hasInsectsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasInsectsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasInsectsAssetCount])
      {
        goto LABEL_138;
      }

      insectsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self insectsAssetCount];
      if (insectsAssetCount != [v5 insectsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasReptilesAssetCount](self, "hasReptilesAssetCount") || [v5 hasReptilesAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasReptilesAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasReptilesAssetCount])
      {
        goto LABEL_138;
      }

      reptilesAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self reptilesAssetCount];
      if (reptilesAssetCount != [v5 reptilesAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasMammalsAssetCount](self, "hasMammalsAssetCount") || [v5 hasMammalsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasMammalsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasMammalsAssetCount])
      {
        goto LABEL_138;
      }

      mammalsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self mammalsAssetCount];
      if (mammalsAssetCount != [v5 mammalsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasLandmarkAssetCount](self, "hasLandmarkAssetCount") || [v5 hasLandmarkAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasLandmarkAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasLandmarkAssetCount])
      {
        goto LABEL_138;
      }

      landmarkAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self landmarkAssetCount];
      if (landmarkAssetCount != [v5 landmarkAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasNaturalLandmarkAssetCount](self, "hasNaturalLandmarkAssetCount") || [v5 hasNaturalLandmarkAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasNaturalLandmarkAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasNaturalLandmarkAssetCount])
      {
        goto LABEL_138;
      }

      naturalLandmarkAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self naturalLandmarkAssetCount];
      if (naturalLandmarkAssetCount != [v5 naturalLandmarkAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasMediaAssetCount](self, "hasMediaAssetCount") || [v5 hasMediaAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasMediaAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasMediaAssetCount])
      {
        goto LABEL_138;
      }

      mediaAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self mediaAssetCount];
      if (mediaAssetCount != [v5 mediaAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasBookAssetCount](self, "hasBookAssetCount") || [v5 hasBookAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasBookAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasBookAssetCount])
      {
        goto LABEL_138;
      }

      bookAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self bookAssetCount];
      if (bookAssetCount != [v5 bookAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasAlbumAssetCount](self, "hasAlbumAssetCount") || [v5 hasAlbumAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasAlbumAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasAlbumAssetCount])
      {
        goto LABEL_138;
      }

      albumAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self albumAssetCount];
      if (albumAssetCount != [v5 albumAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasCatsAssetCount](self, "hasCatsAssetCount") || [v5 hasCatsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasCatsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasCatsAssetCount])
      {
        goto LABEL_138;
      }

      catsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self catsAssetCount];
      if (catsAssetCount != [v5 catsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasDogsAssetCount](self, "hasDogsAssetCount") || [v5 hasDogsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasDogsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasDogsAssetCount])
      {
        goto LABEL_138;
      }

      dogsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self dogsAssetCount];
      if (dogsAssetCount != [v5 dogsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasApparelAssetCount](self, "hasApparelAssetCount") || [v5 hasApparelAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasApparelAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasApparelAssetCount])
      {
        goto LABEL_138;
      }

      apparelAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self apparelAssetCount];
      if (apparelAssetCount != [v5 apparelAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasFoodAssetCount](self, "hasFoodAssetCount") || [v5 hasFoodAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasFoodAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasFoodAssetCount])
      {
        goto LABEL_138;
      }

      foodAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self foodAssetCount];
      if (foodAssetCount != [v5 foodAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasStorefrontAssetCount](self, "hasStorefrontAssetCount") || [v5 hasStorefrontAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasStorefrontAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasStorefrontAssetCount])
      {
        goto LABEL_138;
      }

      storefrontAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self storefrontAssetCount];
      if (storefrontAssetCount != [v5 storefrontAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasSignSymbolAssetCount](self, "hasSignSymbolAssetCount") || [v5 hasSignSymbolAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasSignSymbolAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasSignSymbolAssetCount])
      {
        goto LABEL_138;
      }

      signSymbolAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self signSymbolAssetCount];
      if (signSymbolAssetCount != [v5 signSymbolAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasLaundryCareSymbolAssetCount](self, "hasLaundryCareSymbolAssetCount") || [v5 hasLaundryCareSymbolAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasLaundryCareSymbolAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasLaundryCareSymbolAssetCount])
      {
        goto LABEL_138;
      }

      laundryCareSymbolAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self laundryCareSymbolAssetCount];
      if (laundryCareSymbolAssetCount != [v5 laundryCareSymbolAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasAutoSymbolAssetCount](self, "hasAutoSymbolAssetCount") || [v5 hasAutoSymbolAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasAutoSymbolAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasAutoSymbolAssetCount])
      {
        goto LABEL_138;
      }

      autoSymbolAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self autoSymbolAssetCount];
      if (autoSymbolAssetCount != [v5 autoSymbolAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasBrandLogoSymbolAssetCount](self, "hasBrandLogoSymbolAssetCount") || [v5 hasBrandLogoSymbolAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasBrandLogoSymbolAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasBrandLogoSymbolAssetCount])
      {
        goto LABEL_138;
      }

      brandLogoSymbolAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self brandLogoSymbolAssetCount];
      if (brandLogoSymbolAssetCount != [v5 brandLogoSymbolAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasObject2DAssetCount](self, "hasObject2DAssetCount") || [v5 hasObject2DAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasObject2DAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasObject2DAssetCount])
      {
        goto LABEL_138;
      }

      object2DAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self object2DAssetCount];
      if (object2DAssetCount != [v5 object2DAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasBarcodeDetectionAssetCount](self, "hasBarcodeDetectionAssetCount") || [v5 hasBarcodeDetectionAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasBarcodeDetectionAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasBarcodeDetectionAssetCount])
      {
        goto LABEL_138;
      }

      barcodeDetectionAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self barcodeDetectionAssetCount];
      if (barcodeDetectionAssetCount != [v5 barcodeDetectionAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasSculptureAssetCount](self, "hasSculptureAssetCount") || [v5 hasSculptureAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasSculptureAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasSculptureAssetCount])
      {
        goto LABEL_138;
      }

      sculptureAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self sculptureAssetCount];
      if (sculptureAssetCount != [v5 sculptureAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (!-[BMPerBatchDomainSpecificAssetCounts hasSkylineAssetCount](self, "hasSkylineAssetCount") && ![v5 hasSkylineAssetCount])
    {
      v33 = 1;
      goto LABEL_139;
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasSkylineAssetCount](self, "hasSkylineAssetCount") && [v5 hasSkylineAssetCount])
    {
      skylineAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self skylineAssetCount];
      v33 = skylineAssetCount == [v5 skylineAssetCount];
    }

    else
    {
LABEL_138:
      v33 = 0;
    }

LABEL_139:

    goto LABEL_140;
  }

  v33 = 0;
LABEL_140:

  return v33;
}

- (id)jsonDictionary
{
  v91[27] = *MEMORY[0x1E69E9840];
  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasParsedAssetCount])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts parsedAssetCount](self, "parsedAssetCount")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasAnyDomainAssetCount])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts anyDomainAssetCount](self, "anyDomainAssetCount")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasArtAssetCount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts artAssetCount](self, "artAssetCount")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasNatureAssetCount])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts natureAssetCount](self, "natureAssetCount")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasAnimalsAssetCount])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts animalsAssetCount](self, "animalsAssetCount")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasBirdsAssetCount])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts birdsAssetCount](self, "birdsAssetCount")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasInsectsAssetCount])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts insectsAssetCount](self, "insectsAssetCount")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasReptilesAssetCount])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts reptilesAssetCount](self, "reptilesAssetCount")}];
  }

  else
  {
    v89 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasMammalsAssetCount])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts mammalsAssetCount](self, "mammalsAssetCount")}];
  }

  else
  {
    v88 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasLandmarkAssetCount])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts landmarkAssetCount](self, "landmarkAssetCount")}];
  }

  else
  {
    v87 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasNaturalLandmarkAssetCount])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts naturalLandmarkAssetCount](self, "naturalLandmarkAssetCount")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasMediaAssetCount])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts mediaAssetCount](self, "mediaAssetCount")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasBookAssetCount])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts bookAssetCount](self, "bookAssetCount")}];
  }

  else
  {
    v84 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasAlbumAssetCount])
  {
    v83 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts albumAssetCount](self, "albumAssetCount")}];
  }

  else
  {
    v83 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasCatsAssetCount])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts catsAssetCount](self, "catsAssetCount")}];
  }

  else
  {
    v82 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasDogsAssetCount])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts dogsAssetCount](self, "dogsAssetCount")}];
  }

  else
  {
    v81 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasApparelAssetCount])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts apparelAssetCount](self, "apparelAssetCount")}];
  }

  else
  {
    v80 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasFoodAssetCount])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts foodAssetCount](self, "foodAssetCount")}];
  }

  else
  {
    v79 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasStorefrontAssetCount])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts storefrontAssetCount](self, "storefrontAssetCount")}];
  }

  else
  {
    v78 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasSignSymbolAssetCount])
  {
    v77 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts signSymbolAssetCount](self, "signSymbolAssetCount")}];
  }

  else
  {
    v77 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasLaundryCareSymbolAssetCount])
  {
    v76 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts laundryCareSymbolAssetCount](self, "laundryCareSymbolAssetCount")}];
  }

  else
  {
    v76 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasAutoSymbolAssetCount])
  {
    v75 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts autoSymbolAssetCount](self, "autoSymbolAssetCount")}];
  }

  else
  {
    v75 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasBrandLogoSymbolAssetCount])
  {
    v74 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts brandLogoSymbolAssetCount](self, "brandLogoSymbolAssetCount")}];
  }

  else
  {
    v74 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasObject2DAssetCount])
  {
    v73 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts object2DAssetCount](self, "object2DAssetCount")}];
  }

  else
  {
    v73 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasBarcodeDetectionAssetCount])
  {
    v72 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts barcodeDetectionAssetCount](self, "barcodeDetectionAssetCount")}];
  }

  else
  {
    v72 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasSculptureAssetCount])
  {
    v71 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts sculptureAssetCount](self, "sculptureAssetCount")}];
  }

  else
  {
    v71 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasSkylineAssetCount])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts skylineAssetCount](self, "skylineAssetCount")}];
  }

  else
  {
    v10 = 0;
  }

  v90[0] = @"parsedAssetCount";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null;
  v91[0] = null;
  v90[1] = @"anyDomainAssetCount";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null2;
  v91[1] = null2;
  v90[2] = @"artAssetCount";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null3;
  v91[2] = null3;
  v90[3] = @"natureAssetCount";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null4;
  v91[3] = null4;
  v90[4] = @"animalsAssetCount";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null5;
  v91[4] = null5;
  v90[5] = @"birdsAssetCount";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null6;
  v91[5] = null6;
  v90[6] = @"insectsAssetCount";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null7;
  v91[6] = null7;
  v90[7] = @"reptilesAssetCount";
  null8 = v89;
  if (!v89)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v91[7] = null8;
  v90[8] = @"mammalsAssetCount";
  null9 = v88;
  if (!v88)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v91[8] = null9;
  v90[9] = @"landmarkAssetCount";
  null10 = v87;
  if (!v87)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v9;
  v54 = null10;
  v91[9] = null10;
  v90[10] = @"naturalLandmarkAssetCount";
  null11 = v86;
  if (!v86)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v7;
  v67 = null11;
  v91[10] = null11;
  v90[11] = @"mediaAssetCount";
  null12 = v85;
  if (!v85)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v66 = null12;
  v91[11] = null12;
  v90[12] = @"bookAssetCount";
  null13 = v84;
  if (!v84)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null13;
  v91[12] = null13;
  v90[13] = @"albumAssetCount";
  null14 = v83;
  if (!v83)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null14;
  v91[13] = null14;
  v90[14] = @"catsAssetCount";
  null15 = v82;
  if (!v82)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null15;
  v91[14] = null15;
  v90[15] = @"dogsAssetCount";
  null16 = v81;
  if (!v81)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null16;
  v91[15] = null16;
  v90[16] = @"apparelAssetCount";
  null17 = v80;
  if (!v80)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v4;
  v50 = null17;
  v91[16] = null17;
  v90[17] = @"foodAssetCount";
  null18 = v79;
  if (!v79)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = null18;
  v91[17] = null18;
  v90[18] = @"storefrontAssetCount";
  null19 = v78;
  if (!v78)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v5;
  v48 = null19;
  v91[18] = null19;
  v90[19] = @"signSymbolAssetCount";
  null20 = v77;
  if (!v77)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = null20;
  v91[19] = null20;
  v90[20] = @"laundryCareSymbolAssetCount";
  null21 = v76;
  if (!v76)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v10;
  v46 = null21;
  v91[20] = null21;
  v90[21] = @"autoSymbolAssetCount";
  null22 = v75;
  if (!v75)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null9;
  v45 = null22;
  v91[21] = null22;
  v90[22] = @"brandLogoSymbolAssetCount";
  null23 = v74;
  if (!v74)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null8;
  v91[22] = null23;
  v90[23] = @"object2DAssetCount";
  null24 = v73;
  if (!v73)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v22;
  v91[23] = null24;
  v90[24] = @"barcodeDetectionAssetCount";
  null25 = v72;
  if (!v72)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v91[24] = null25;
  v90[25] = @"sculptureAssetCount";
  null26 = v71;
  if (!v71)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v91[25] = null26;
  v90[26] = @"skylineAssetCount";
  null27 = v70;
  if (!v70)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v91[26] = null27;
  v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:27];
  if (!v70)
  {
  }

  v42 = v26;
  if (!v71)
  {

    v42 = v26;
  }

  if (!v72)
  {

    v42 = v26;
  }

  if (!v73)
  {

    v42 = v26;
  }

  if (!v74)
  {

    v42 = v26;
  }

  if (!v75)
  {

    v42 = v26;
  }

  if (!v76)
  {

    v42 = v26;
  }

  if (!v77)
  {

    v42 = v26;
  }

  if (!v78)
  {

    v42 = v26;
  }

  if (!v79)
  {

    v42 = v26;
  }

  if (!v80)
  {

    v42 = v26;
  }

  if (!v81)
  {

    v42 = v26;
  }

  if (!v82)
  {

    v42 = v26;
  }

  if (!v83)
  {

    v42 = v26;
  }

  if (!v84)
  {
  }

  if (!v85)
  {
  }

  if (!v86)
  {
  }

  if (!v87)
  {
  }

  if (!v88)
  {
  }

  if (v89)
  {
    if (v65)
    {
      goto LABEL_176;
    }
  }

  else
  {

    if (v65)
    {
LABEL_176:
      if (v8)
      {
        goto LABEL_177;
      }

      goto LABEL_187;
    }
  }

  if (v8)
  {
LABEL_177:
    if (v38)
    {
      goto LABEL_178;
    }

    goto LABEL_188;
  }

LABEL_187:

  if (v38)
  {
LABEL_178:
    if (v6)
    {
      goto LABEL_179;
    }

    goto LABEL_189;
  }

LABEL_188:

  if (v6)
  {
LABEL_179:
    if (v68)
    {
      goto LABEL_180;
    }

    goto LABEL_190;
  }

LABEL_189:

  if (v68)
  {
LABEL_180:
    if (v69)
    {
      goto LABEL_181;
    }

LABEL_191:

    if (v24)
    {
      goto LABEL_182;
    }

    goto LABEL_192;
  }

LABEL_190:

  if (!v69)
  {
    goto LABEL_191;
  }

LABEL_181:
  if (v24)
  {
    goto LABEL_182;
  }

LABEL_192:

LABEL_182:
  v43 = *MEMORY[0x1E69E9840];

  return v64;
}

- (BMPerBatchDomainSpecificAssetCounts)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v301[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"parsedAssetCount"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v246 = 0;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"anyDomainAssetCount"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v245 = 0;
          v56 = 0;
          goto LABEL_120;
        }

        v61 = objc_alloc(MEMORY[0x1E696ABC0]);
        v62 = *MEMORY[0x1E698F240];
        v298 = *MEMORY[0x1E696A578];
        v244 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"anyDomainAssetCount"];
        v299 = v244;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v299 forKeys:&v298 count:1];
        v245 = 0;
        v56 = 0;
        *error = [v61 initWithDomain:v62 code:2 userInfo:v8];
        goto LABEL_119;
      }

      v245 = v7;
    }

    else
    {
      v245 = 0;
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"artAssetCount"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v244 = 0;
          v56 = 0;
          goto LABEL_119;
        }

        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v64 = *MEMORY[0x1E698F240];
        v296 = *MEMORY[0x1E696A578];
        v242 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"artAssetCount"];
        v297 = v242;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
        v244 = 0;
        v56 = 0;
        *error = [v63 initWithDomain:v64 code:2 userInfo:v54];
LABEL_118:

LABEL_119:
        goto LABEL_120;
      }

      v244 = v8;
    }

    else
    {
      v244 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"natureAssetCount"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v54 = v9;
        if (!error)
        {
          v242 = 0;
          v56 = 0;
          goto LABEL_118;
        }

        v243 = objc_alloc(MEMORY[0x1E696ABC0]);
        v239 = *MEMORY[0x1E698F240];
        v294 = *MEMORY[0x1E696A578];
        errorCopy = error;
        v240 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"natureAssetCount"];
        v295 = v240;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v295 forKeys:&v294 count:1];
        v66 = [v243 initWithDomain:v239 code:2 userInfo:v10];
        v242 = 0;
        v56 = 0;
        *errorCopy = v66;
        goto LABEL_117;
      }

      errorCopy3 = error;
      v238 = v9;
      v242 = v9;
    }

    else
    {
      errorCopy3 = error;
      v238 = v9;
      v242 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"animalsAssetCount"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v234 = v10;
        v10 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v240 = 0;
            v56 = 0;
            v54 = v238;
            goto LABEL_117;
          }

          v241 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = *MEMORY[0x1E698F240];
          v292 = *MEMORY[0x1E696A578];
          v235 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"animalsAssetCount"];
          v293 = v235;
          v236 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
          v68 = [v241 initWithDomain:v67 code:2 userInfo:?];
          v240 = 0;
          v56 = 0;
          *errorCopy3 = v68;
          v54 = v238;
LABEL_116:

LABEL_117:
          goto LABEL_118;
        }

        v234 = v10;
        v10 = v10;
      }
    }

    else
    {
      v234 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"birdsAssetCount"];
    v240 = v10;
    v236 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy3)
        {
          v235 = 0;
          v56 = 0;
          v54 = v238;
          v10 = v234;
          goto LABEL_116;
        }

        v69 = objc_alloc(MEMORY[0x1E696ABC0]);
        v70 = *MEMORY[0x1E698F240];
        v290 = *MEMORY[0x1E696A578];
        v232 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"birdsAssetCount"];
        v291 = v232;
        v233 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v291 forKeys:&v290 count:1];
        v235 = 0;
        v56 = 0;
        *errorCopy3 = [v69 initWithDomain:v70 code:2 userInfo:?];
        goto LABEL_175;
      }

      v235 = v12;
    }

    else
    {
      v235 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"insectsAssetCount"];
    v233 = v13;
    if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v232 = 0;
      goto LABEL_33;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v232 = v14;
LABEL_33:
      v15 = [dictionaryCopy objectForKeyedSubscript:@"reptilesAssetCount"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v226 = v15;
        v230 = 0;
LABEL_36:
        v16 = [dictionaryCopy objectForKeyedSubscript:@"mammalsAssetCount"];
        if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy3)
            {
              v228 = 0;
              v56 = 0;
              v54 = v238;
              v10 = v234;
              v15 = v226;
              goto LABEL_113;
            }

            v229 = objc_alloc(MEMORY[0x1E696ABC0]);
            v77 = v16;
            v78 = *MEMORY[0x1E698F240];
            v284 = *MEMORY[0x1E696A578];
            v223 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mammalsAssetCount"];
            v285 = v223;
            v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v285 forKeys:&v284 count:1];
            v80 = v78;
            v16 = v77;
            v225 = v79;
            v81 = [v229 initWithDomain:v80 code:2 userInfo:?];
            v228 = 0;
            v56 = 0;
            *errorCopy3 = v81;
            goto LABEL_192;
          }

          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = [dictionaryCopy objectForKeyedSubscript:@"landmarkAssetCount"];
        v228 = v17;
        v225 = v18;
        if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v223 = 0;
          goto LABEL_42;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v223 = v19;
LABEL_42:
          v20 = [dictionaryCopy objectForKeyedSubscript:@"naturalLandmarkAssetCount"];
          v222 = v20;
          if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v220 = 0;
            goto LABEL_45;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v220 = v21;
LABEL_45:
            v22 = [dictionaryCopy objectForKeyedSubscript:@"mediaAssetCount"];
            v219 = v22;
            if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v217 = 0;
              goto LABEL_48;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v217 = v23;
LABEL_48:
              v24 = [dictionaryCopy objectForKeyedSubscript:@"bookAssetCount"];
              v216 = v24;
              if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v214 = 0;
                goto LABEL_51;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v214 = v25;
LABEL_51:
                v26 = [dictionaryCopy objectForKeyedSubscript:@"albumAssetCount"];
                v213 = v26;
                if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v211 = 0;
                  goto LABEL_54;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v211 = v27;
LABEL_54:
                  v28 = [dictionaryCopy objectForKeyedSubscript:@"catsAssetCount"];
                  v208 = v28;
                  if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v209 = 0;
                    goto LABEL_57;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v209 = v29;
LABEL_57:
                    v30 = [dictionaryCopy objectForKeyedSubscript:@"dogsAssetCount"];
                    v205 = v30;
                    if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v206 = 0;
                      goto LABEL_60;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v206 = v31;
LABEL_60:
                      v32 = [dictionaryCopy objectForKeyedSubscript:@"apparelAssetCount"];
                      v202 = v32;
                      if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v203 = 0;
                        goto LABEL_63;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v203 = v33;
LABEL_63:
                        v34 = [dictionaryCopy objectForKeyedSubscript:@"foodAssetCount"];
                        v199 = v34;
                        if (!v34 || (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v200 = 0;
                          goto LABEL_66;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v200 = v35;
LABEL_66:
                          v36 = [dictionaryCopy objectForKeyedSubscript:@"storefrontAssetCount"];
                          v196 = v36;
                          if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v197 = 0;
                            goto LABEL_69;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v197 = v37;
LABEL_69:
                            v38 = [dictionaryCopy objectForKeyedSubscript:@"signSymbolAssetCount"];
                            v193 = v38;
                            if (!v38 || (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v194 = 0;
                              goto LABEL_72;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v194 = v39;
LABEL_72:
                              v40 = [dictionaryCopy objectForKeyedSubscript:@"laundryCareSymbolAssetCount"];
                              v190 = v40;
                              if (!v40 || (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v191 = 0;
                                goto LABEL_75;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v191 = v41;
LABEL_75:
                                v42 = [dictionaryCopy objectForKeyedSubscript:@"autoSymbolAssetCount"];
                                v187 = v42;
                                if (!v42 || (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v188 = 0;
                                  goto LABEL_78;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v188 = v43;
LABEL_78:
                                  v44 = [dictionaryCopy objectForKeyedSubscript:@"brandLogoSymbolAssetCount"];
                                  v184 = v44;
                                  if (!v44 || (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v185 = 0;
                                    goto LABEL_81;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v185 = v45;
LABEL_81:
                                    v46 = [dictionaryCopy objectForKeyedSubscript:@"object2DAssetCount"];
                                    v179 = v46;
                                    if (!v46 || (v47 = v46, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v182 = 0;
                                      goto LABEL_84;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v182 = v47;
LABEL_84:
                                      v48 = [dictionaryCopy objectForKeyedSubscript:@"barcodeDetectionAssetCount"];
                                      v176 = v48;
                                      if (!v48 || (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v180 = 0;
                                        goto LABEL_87;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v180 = v49;
LABEL_87:
                                        v50 = [dictionaryCopy objectForKeyedSubscript:@"sculptureAssetCount"];
                                        v175 = v50;
                                        if (!v50 || (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v177 = 0;
                                          goto LABEL_90;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v177 = v51;
LABEL_90:
                                          v52 = [dictionaryCopy objectForKeyedSubscript:@"skylineAssetCount"];
                                          v174 = v52;
                                          if (v52)
                                          {
                                            v53 = v52;
                                            objc_opt_class();
                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                            {
                                              objc_opt_class();
                                              v54 = v238;
                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                              {
                                                if (errorCopy3)
                                                {
                                                  v167 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v168 = v16;
                                                  v169 = *MEMORY[0x1E698F240];
                                                  v248 = *MEMORY[0x1E696A578];
                                                  v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"skylineAssetCount"];
                                                  v249 = v170;
                                                  v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v249 forKeys:&v248 count:1];
                                                  v172 = v167;
                                                  v54 = v238;
                                                  v173 = v169;
                                                  v16 = v168;
                                                  *errorCopy3 = [v172 initWithDomain:v173 code:2 userInfo:v171];
                                                }

                                                v55 = 0;
                                                v56 = 0;
                                                goto LABEL_95;
                                              }

                                              v52 = v53;
                                              goto LABEL_94;
                                            }

                                            v52 = 0;
                                          }

                                          v54 = v238;
LABEL_94:
                                          v55 = v52;
                                          v56 = [(BMPerBatchDomainSpecificAssetCounts *)self initWithParsedAssetCount:v246 anyDomainAssetCount:v245 artAssetCount:v244 natureAssetCount:v242 animalsAssetCount:v10 birdsAssetCount:v235 insectsAssetCount:v232 reptilesAssetCount:v230 mammalsAssetCount:v17 landmarkAssetCount:v223 naturalLandmarkAssetCount:v220 mediaAssetCount:v217 bookAssetCount:v214 albumAssetCount:v211 catsAssetCount:v209 dogsAssetCount:v206 apparelAssetCount:v203 foodAssetCount:v200 storefrontAssetCount:v197 signSymbolAssetCount:v194 laundryCareSymbolAssetCount:v191 autoSymbolAssetCount:v188 brandLogoSymbolAssetCount:v185 object2DAssetCount:v182 barcodeDetectionAssetCount:v180 sculptureAssetCount:v177 skylineAssetCount:v52];
                                          self = v56;
LABEL_95:
                                          v10 = v234;
                                          v15 = v226;

LABEL_96:
LABEL_97:

LABEL_98:
LABEL_99:

LABEL_100:
LABEL_101:

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

                                          goto LABEL_116;
                                        }

                                        if (errorCopy3)
                                        {
                                          v178 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v162 = v16;
                                          v163 = *MEMORY[0x1E698F240];
                                          v250 = *MEMORY[0x1E696A578];
                                          v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sculptureAssetCount"];
                                          v251 = v55;
                                          v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v251 forKeys:&v250 count:1];
                                          v165 = v163;
                                          v16 = v162;
                                          v174 = v164;
                                          v166 = [v178 initWithDomain:v165 code:2 userInfo:?];
                                          v177 = 0;
                                          v56 = 0;
                                          *errorCopy3 = v166;
                                          v54 = v238;
                                          goto LABEL_95;
                                        }

                                        v177 = 0;
                                        v56 = 0;
LABEL_265:
                                        v54 = v238;
                                        v10 = v234;
                                        v15 = v226;
                                        goto LABEL_96;
                                      }

                                      if (errorCopy3)
                                      {
                                        v181 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v157 = v16;
                                        v158 = *MEMORY[0x1E698F240];
                                        v252 = *MEMORY[0x1E696A578];
                                        v177 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"barcodeDetectionAssetCount"];
                                        v253 = v177;
                                        v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v253 forKeys:&v252 count:1];
                                        v160 = v158;
                                        v16 = v157;
                                        v175 = v159;
                                        v161 = [v181 initWithDomain:v160 code:2 userInfo:?];
                                        v180 = 0;
                                        v56 = 0;
                                        *errorCopy3 = v161;
                                        goto LABEL_265;
                                      }

                                      v180 = 0;
                                      v56 = 0;
LABEL_263:
                                      v54 = v238;
                                      v10 = v234;
                                      v15 = v226;
                                      goto LABEL_97;
                                    }

                                    if (errorCopy3)
                                    {
                                      v183 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v152 = v16;
                                      v153 = *MEMORY[0x1E698F240];
                                      v254 = *MEMORY[0x1E696A578];
                                      v180 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"object2DAssetCount"];
                                      v255 = v180;
                                      v154 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v255 forKeys:&v254 count:1];
                                      v155 = v153;
                                      v16 = v152;
                                      v176 = v154;
                                      v156 = [v183 initWithDomain:v155 code:2 userInfo:?];
                                      v182 = 0;
                                      v56 = 0;
                                      *errorCopy3 = v156;
                                      goto LABEL_263;
                                    }

                                    v182 = 0;
                                    v56 = 0;
LABEL_261:
                                    v54 = v238;
                                    v10 = v234;
                                    v15 = v226;
                                    goto LABEL_98;
                                  }

                                  if (errorCopy3)
                                  {
                                    v186 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v147 = v16;
                                    v148 = *MEMORY[0x1E698F240];
                                    v256 = *MEMORY[0x1E696A578];
                                    v182 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brandLogoSymbolAssetCount"];
                                    v257 = v182;
                                    v149 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v257 forKeys:&v256 count:1];
                                    v150 = v148;
                                    v16 = v147;
                                    v179 = v149;
                                    v151 = [v186 initWithDomain:v150 code:2 userInfo:?];
                                    v185 = 0;
                                    v56 = 0;
                                    *errorCopy3 = v151;
                                    goto LABEL_261;
                                  }

                                  v185 = 0;
                                  v56 = 0;
LABEL_259:
                                  v54 = v238;
                                  v10 = v234;
                                  v15 = v226;
                                  goto LABEL_99;
                                }

                                if (errorCopy3)
                                {
                                  v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v142 = v16;
                                  v143 = *MEMORY[0x1E698F240];
                                  v258 = *MEMORY[0x1E696A578];
                                  v185 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"autoSymbolAssetCount"];
                                  v259 = v185;
                                  v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v259 forKeys:&v258 count:1];
                                  v145 = v143;
                                  v16 = v142;
                                  v184 = v144;
                                  v146 = [v189 initWithDomain:v145 code:2 userInfo:?];
                                  v188 = 0;
                                  v56 = 0;
                                  *errorCopy3 = v146;
                                  goto LABEL_259;
                                }

                                v188 = 0;
                                v56 = 0;
LABEL_257:
                                v54 = v238;
                                v10 = v234;
                                v15 = v226;
                                goto LABEL_100;
                              }

                              if (errorCopy3)
                              {
                                v192 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v137 = v16;
                                v138 = *MEMORY[0x1E698F240];
                                v260 = *MEMORY[0x1E696A578];
                                v188 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"laundryCareSymbolAssetCount"];
                                v261 = v188;
                                v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v261 forKeys:&v260 count:1];
                                v140 = v138;
                                v16 = v137;
                                v187 = v139;
                                v141 = [v192 initWithDomain:v140 code:2 userInfo:?];
                                v191 = 0;
                                v56 = 0;
                                *errorCopy3 = v141;
                                goto LABEL_257;
                              }

                              v191 = 0;
                              v56 = 0;
LABEL_252:
                              v54 = v238;
                              v10 = v234;
                              v15 = v226;
                              goto LABEL_101;
                            }

                            if (errorCopy3)
                            {
                              v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v132 = v16;
                              v133 = *MEMORY[0x1E698F240];
                              v262 = *MEMORY[0x1E696A578];
                              v191 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"signSymbolAssetCount"];
                              v263 = v191;
                              v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v263 forKeys:&v262 count:1];
                              v135 = v133;
                              v16 = v132;
                              v190 = v134;
                              v136 = [v195 initWithDomain:v135 code:2 userInfo:?];
                              v194 = 0;
                              v56 = 0;
                              *errorCopy3 = v136;
                              goto LABEL_252;
                            }

                            v194 = 0;
                            v56 = 0;
LABEL_248:
                            v54 = v238;
                            v10 = v234;
                            v15 = v226;
                            goto LABEL_102;
                          }

                          if (errorCopy3)
                          {
                            v198 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v127 = v16;
                            v128 = *MEMORY[0x1E698F240];
                            v264 = *MEMORY[0x1E696A578];
                            v194 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"storefrontAssetCount"];
                            v265 = v194;
                            v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v265 forKeys:&v264 count:1];
                            v130 = v128;
                            v16 = v127;
                            v193 = v129;
                            v131 = [v198 initWithDomain:v130 code:2 userInfo:?];
                            v197 = 0;
                            v56 = 0;
                            *errorCopy3 = v131;
                            goto LABEL_248;
                          }

                          v197 = 0;
                          v56 = 0;
LABEL_244:
                          v54 = v238;
                          v10 = v234;
                          v15 = v226;
                          goto LABEL_103;
                        }

                        if (errorCopy3)
                        {
                          v201 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v122 = v16;
                          v123 = *MEMORY[0x1E698F240];
                          v266 = *MEMORY[0x1E696A578];
                          v197 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"foodAssetCount"];
                          v267 = v197;
                          v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
                          v125 = v123;
                          v16 = v122;
                          v196 = v124;
                          v126 = [v201 initWithDomain:v125 code:2 userInfo:?];
                          v200 = 0;
                          v56 = 0;
                          *errorCopy3 = v126;
                          goto LABEL_244;
                        }

                        v200 = 0;
                        v56 = 0;
LABEL_240:
                        v54 = v238;
                        v10 = v234;
                        v15 = v226;
                        goto LABEL_104;
                      }

                      if (errorCopy3)
                      {
                        v204 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v117 = v16;
                        v118 = *MEMORY[0x1E698F240];
                        v268 = *MEMORY[0x1E696A578];
                        v200 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"apparelAssetCount"];
                        v269 = v200;
                        v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
                        v120 = v118;
                        v16 = v117;
                        v199 = v119;
                        v121 = [v204 initWithDomain:v120 code:2 userInfo:?];
                        v203 = 0;
                        v56 = 0;
                        *errorCopy3 = v121;
                        goto LABEL_240;
                      }

                      v203 = 0;
                      v56 = 0;
LABEL_234:
                      v54 = v238;
                      v10 = v234;
                      v15 = v226;
                      goto LABEL_105;
                    }

                    if (errorCopy3)
                    {
                      v207 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v112 = v16;
                      v113 = *MEMORY[0x1E698F240];
                      v270 = *MEMORY[0x1E696A578];
                      v203 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dogsAssetCount"];
                      v271 = v203;
                      v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
                      v115 = v113;
                      v16 = v112;
                      v202 = v114;
                      v116 = [v207 initWithDomain:v115 code:2 userInfo:?];
                      v206 = 0;
                      v56 = 0;
                      *errorCopy3 = v116;
                      goto LABEL_234;
                    }

                    v206 = 0;
                    v56 = 0;
LABEL_228:
                    v54 = v238;
                    v10 = v234;
                    v15 = v226;
                    goto LABEL_106;
                  }

                  if (errorCopy3)
                  {
                    v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v107 = v16;
                    v108 = *MEMORY[0x1E698F240];
                    v272 = *MEMORY[0x1E696A578];
                    v206 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"catsAssetCount"];
                    v273 = v206;
                    v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v273 forKeys:&v272 count:1];
                    v110 = v108;
                    v16 = v107;
                    v205 = v109;
                    v111 = [v210 initWithDomain:v110 code:2 userInfo:?];
                    v209 = 0;
                    v56 = 0;
                    *errorCopy3 = v111;
                    goto LABEL_228;
                  }

                  v209 = 0;
                  v56 = 0;
LABEL_222:
                  v54 = v238;
                  v10 = v234;
                  v15 = v226;
                  goto LABEL_107;
                }

                if (errorCopy3)
                {
                  v212 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v102 = v16;
                  v103 = *MEMORY[0x1E698F240];
                  v274 = *MEMORY[0x1E696A578];
                  v209 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"albumAssetCount"];
                  v275 = v209;
                  v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
                  v105 = v103;
                  v16 = v102;
                  v208 = v104;
                  v106 = [v212 initWithDomain:v105 code:2 userInfo:?];
                  v211 = 0;
                  v56 = 0;
                  *errorCopy3 = v106;
                  goto LABEL_222;
                }

                v211 = 0;
                v56 = 0;
LABEL_216:
                v54 = v238;
                v10 = v234;
                v15 = v226;
                goto LABEL_108;
              }

              if (errorCopy3)
              {
                v215 = objc_alloc(MEMORY[0x1E696ABC0]);
                v97 = v16;
                v98 = *MEMORY[0x1E698F240];
                v276 = *MEMORY[0x1E696A578];
                v211 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bookAssetCount"];
                v277 = v211;
                v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v277 forKeys:&v276 count:1];
                v100 = v98;
                v16 = v97;
                v213 = v99;
                v101 = [v215 initWithDomain:v100 code:2 userInfo:?];
                v214 = 0;
                v56 = 0;
                *errorCopy3 = v101;
                goto LABEL_216;
              }

              v214 = 0;
              v56 = 0;
LABEL_210:
              v54 = v238;
              v10 = v234;
              v15 = v226;
              goto LABEL_109;
            }

            if (errorCopy3)
            {
              v218 = objc_alloc(MEMORY[0x1E696ABC0]);
              v92 = v16;
              v93 = *MEMORY[0x1E698F240];
              v278 = *MEMORY[0x1E696A578];
              v214 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaAssetCount"];
              v279 = v214;
              v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v279 forKeys:&v278 count:1];
              v95 = v93;
              v16 = v92;
              v216 = v94;
              v96 = [v218 initWithDomain:v95 code:2 userInfo:?];
              v217 = 0;
              v56 = 0;
              *errorCopy3 = v96;
              goto LABEL_210;
            }

            v217 = 0;
            v56 = 0;
LABEL_204:
            v54 = v238;
            v10 = v234;
            v15 = v226;
            goto LABEL_110;
          }

          if (errorCopy3)
          {
            v221 = objc_alloc(MEMORY[0x1E696ABC0]);
            v87 = v16;
            v88 = *MEMORY[0x1E698F240];
            v280 = *MEMORY[0x1E696A578];
            v217 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"naturalLandmarkAssetCount"];
            v281 = v217;
            v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v281 forKeys:&v280 count:1];
            v90 = v88;
            v16 = v87;
            v219 = v89;
            v91 = [v221 initWithDomain:v90 code:2 userInfo:?];
            v220 = 0;
            v56 = 0;
            *errorCopy3 = v91;
            goto LABEL_204;
          }

          v220 = 0;
          v56 = 0;
LABEL_198:
          v54 = v238;
          v10 = v234;
          v15 = v226;
          goto LABEL_111;
        }

        if (errorCopy3)
        {
          v224 = objc_alloc(MEMORY[0x1E696ABC0]);
          v82 = v16;
          v83 = *MEMORY[0x1E698F240];
          v282 = *MEMORY[0x1E696A578];
          v220 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"landmarkAssetCount"];
          v283 = v220;
          v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v283 forKeys:&v282 count:1];
          v85 = v83;
          v16 = v82;
          v222 = v84;
          v86 = [v224 initWithDomain:v85 code:2 userInfo:?];
          v223 = 0;
          v56 = 0;
          *errorCopy3 = v86;
          goto LABEL_198;
        }

        v223 = 0;
        v56 = 0;
LABEL_192:
        v54 = v238;
        v10 = v234;
        v15 = v226;
        goto LABEL_112;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v226 = v15;
        v230 = v15;
        goto LABEL_36;
      }

      if (errorCopy3)
      {
        v231 = objc_alloc(MEMORY[0x1E696ABC0]);
        v227 = *MEMORY[0x1E698F240];
        v286 = *MEMORY[0x1E696A578];
        v74 = v15;
        v228 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"reptilesAssetCount"];
        v287 = v228;
        v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v287 forKeys:&v286 count:1];
        v76 = [v231 initWithDomain:v227 code:2 userInfo:v75];
        v230 = 0;
        v56 = 0;
        *errorCopy3 = v76;
        v16 = v75;
        v15 = v74;
        v54 = v238;
        v10 = v234;
        goto LABEL_113;
      }

      v230 = 0;
      v56 = 0;
LABEL_181:
      v54 = v238;
      v10 = v234;
      goto LABEL_114;
    }

    if (errorCopy3)
    {
      v71 = objc_alloc(MEMORY[0x1E696ABC0]);
      v72 = *MEMORY[0x1E698F240];
      v288 = *MEMORY[0x1E696A578];
      v230 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"insectsAssetCount"];
      v289 = v230;
      v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v289 forKeys:&v288 count:1];
      v232 = 0;
      v56 = 0;
      *errorCopy3 = [v71 initWithDomain:v72 code:2 userInfo:v73];
      v15 = v73;
      goto LABEL_181;
    }

    v232 = 0;
    v56 = 0;
LABEL_175:
    v54 = v238;
    v10 = v234;
    goto LABEL_115;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v246 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v246 = 0;
    v56 = 0;
    goto LABEL_121;
  }

  v59 = objc_alloc(MEMORY[0x1E696ABC0]);
  v60 = *MEMORY[0x1E698F240];
  v300 = *MEMORY[0x1E696A578];
  v245 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"parsedAssetCount"];
  v301[0] = v245;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v301 forKeys:&v300 count:1];
  v246 = 0;
  v56 = 0;
  *error = [v59 initWithDomain:v60 code:2 userInfo:v7];
LABEL_120:

LABEL_121:
  v57 = *MEMORY[0x1E69E9840];
  return v56;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPerBatchDomainSpecificAssetCounts *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasParsedAssetCount)
  {
    parsedAssetCount = self->_parsedAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAnyDomainAssetCount)
  {
    anyDomainAssetCount = self->_anyDomainAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasArtAssetCount)
  {
    artAssetCount = self->_artAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNatureAssetCount)
  {
    natureAssetCount = self->_natureAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAnimalsAssetCount)
  {
    animalsAssetCount = self->_animalsAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBirdsAssetCount)
  {
    birdsAssetCount = self->_birdsAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasInsectsAssetCount)
  {
    insectsAssetCount = self->_insectsAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasReptilesAssetCount)
  {
    reptilesAssetCount = self->_reptilesAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasMammalsAssetCount)
  {
    mammalsAssetCount = self->_mammalsAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasLandmarkAssetCount)
  {
    landmarkAssetCount = self->_landmarkAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNaturalLandmarkAssetCount)
  {
    naturalLandmarkAssetCount = self->_naturalLandmarkAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasMediaAssetCount)
  {
    mediaAssetCount = self->_mediaAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBookAssetCount)
  {
    bookAssetCount = self->_bookAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAlbumAssetCount)
  {
    albumAssetCount = self->_albumAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasCatsAssetCount)
  {
    catsAssetCount = self->_catsAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasDogsAssetCount)
  {
    dogsAssetCount = self->_dogsAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasApparelAssetCount)
  {
    apparelAssetCount = self->_apparelAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasFoodAssetCount)
  {
    foodAssetCount = self->_foodAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasStorefrontAssetCount)
  {
    storefrontAssetCount = self->_storefrontAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSignSymbolAssetCount)
  {
    signSymbolAssetCount = self->_signSymbolAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasLaundryCareSymbolAssetCount)
  {
    laundryCareSymbolAssetCount = self->_laundryCareSymbolAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAutoSymbolAssetCount)
  {
    autoSymbolAssetCount = self->_autoSymbolAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBrandLogoSymbolAssetCount)
  {
    brandLogoSymbolAssetCount = self->_brandLogoSymbolAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasObject2DAssetCount)
  {
    object2DAssetCount = self->_object2DAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBarcodeDetectionAssetCount)
  {
    barcodeDetectionAssetCount = self->_barcodeDetectionAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSculptureAssetCount)
  {
    sculptureAssetCount = self->_sculptureAssetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSkylineAssetCount)
  {
    skylineAssetCount = self->_skylineAssetCount;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v156.receiver = self;
  v156.super_class = BMPerBatchDomainSpecificAssetCounts;
  v5 = [(BMEventBase *)&v156 init];
  if (!v5)
  {
LABEL_297:
    v154 = v5;
    goto LABEL_298;
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
      v157 = 0;
      v10 = [fromCopy position] + 1;
      if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v9 |= (v157 & 0x7F) << v7;
      if ((v157 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      if (v8++ >= 9)
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
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v5->_hasParsedAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v15;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v15 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__parsedAssetCount;
          v23 = v16++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__parsedAssetCount;
        goto LABEL_291;
      case 2u:
        v84 = 0;
        v85 = 0;
        v17 = 0;
        v5->_hasAnyDomainAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v86 = [fromCopy position] + 1;
          if (v86 >= [fromCopy position] && (v87 = objc_msgSend(fromCopy, "position") + 1, v87 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v84;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v84 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__anyDomainAssetCount;
          v23 = v85++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__anyDomainAssetCount;
        goto LABEL_291;
      case 3u:
        v64 = 0;
        v65 = 0;
        v17 = 0;
        v5->_hasArtAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v66 = [fromCopy position] + 1;
          if (v66 >= [fromCopy position] && (v67 = objc_msgSend(fromCopy, "position") + 1, v67 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v64;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v64 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__artAssetCount;
          v23 = v65++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__artAssetCount;
        goto LABEL_291;
      case 4u:
        v74 = 0;
        v75 = 0;
        v17 = 0;
        v5->_hasNatureAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v76 = [fromCopy position] + 1;
          if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v74;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v74 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__natureAssetCount;
          v23 = v75++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__natureAssetCount;
        goto LABEL_291;
      case 5u:
        v39 = 0;
        v40 = 0;
        v17 = 0;
        v5->_hasAnimalsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v39;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v39 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__animalsAssetCount;
          v23 = v40++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__animalsAssetCount;
        goto LABEL_291;
      case 6u:
        v99 = 0;
        v100 = 0;
        v17 = 0;
        v5->_hasBirdsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v101 = [fromCopy position] + 1;
          if (v101 >= [fromCopy position] && (v102 = objc_msgSend(fromCopy, "position") + 1, v102 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v99;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v99 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__birdsAssetCount;
          v23 = v100++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__birdsAssetCount;
        goto LABEL_291;
      case 7u:
        v114 = 0;
        v115 = 0;
        v17 = 0;
        v5->_hasInsectsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v116 = [fromCopy position] + 1;
          if (v116 >= [fromCopy position] && (v117 = objc_msgSend(fromCopy, "position") + 1, v117 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v114;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v114 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__insectsAssetCount;
          v23 = v115++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__insectsAssetCount;
        goto LABEL_291;
      case 8u:
        v79 = 0;
        v80 = 0;
        v17 = 0;
        v5->_hasReptilesAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v81 = [fromCopy position] + 1;
          if (v81 >= [fromCopy position] && (v82 = objc_msgSend(fromCopy, "position") + 1, v82 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v79;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v79 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__reptilesAssetCount;
          v23 = v80++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__reptilesAssetCount;
        goto LABEL_291;
      case 9u:
        v129 = 0;
        v130 = 0;
        v17 = 0;
        v5->_hasMammalsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v131 = [fromCopy position] + 1;
          if (v131 >= [fromCopy position] && (v132 = objc_msgSend(fromCopy, "position") + 1, v132 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v129;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v129 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__mammalsAssetCount;
          v23 = v130++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__mammalsAssetCount;
        goto LABEL_291;
      case 0xAu:
        v49 = 0;
        v50 = 0;
        v17 = 0;
        v5->_hasLandmarkAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v51 = [fromCopy position] + 1;
          if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v49;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v49 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__landmarkAssetCount;
          v23 = v50++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__landmarkAssetCount;
        goto LABEL_291;
      case 0xBu:
        v124 = 0;
        v125 = 0;
        v17 = 0;
        v5->_hasNaturalLandmarkAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v126 = [fromCopy position] + 1;
          if (v126 >= [fromCopy position] && (v127 = objc_msgSend(fromCopy, "position") + 1, v127 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v124;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v124 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__naturalLandmarkAssetCount;
          v23 = v125++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__naturalLandmarkAssetCount;
        goto LABEL_291;
      case 0xCu:
        v34 = 0;
        v35 = 0;
        v17 = 0;
        v5->_hasMediaAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v36 = [fromCopy position] + 1;
          if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
          {
            data13 = [fromCopy data];
            [data13 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v34;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v34 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__mediaAssetCount;
          v23 = v35++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__mediaAssetCount;
        goto LABEL_291;
      case 0xDu:
        v44 = 0;
        v45 = 0;
        v17 = 0;
        v5->_hasBookAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v46 = [fromCopy position] + 1;
          if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v44;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v44 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__bookAssetCount;
          v23 = v45++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__bookAssetCount;
        goto LABEL_291;
      case 0xEu:
        v109 = 0;
        v110 = 0;
        v17 = 0;
        v5->_hasAlbumAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v111 = [fromCopy position] + 1;
          if (v111 >= [fromCopy position] && (v112 = objc_msgSend(fromCopy, "position") + 1, v112 <= objc_msgSend(fromCopy, "length")))
          {
            data15 = [fromCopy data];
            [data15 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v109;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v109 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__albumAssetCount;
          v23 = v110++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__albumAssetCount;
        goto LABEL_291;
      case 0xFu:
        v29 = 0;
        v30 = 0;
        v17 = 0;
        v5->_hasCatsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v31 = [fromCopy position] + 1;
          if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
          {
            data16 = [fromCopy data];
            [data16 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v29;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v29 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__catsAssetCount;
          v23 = v30++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__catsAssetCount;
        goto LABEL_291;
      case 0x10u:
        v69 = 0;
        v70 = 0;
        v17 = 0;
        v5->_hasDogsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v71 = [fromCopy position] + 1;
          if (v71 >= [fromCopy position] && (v72 = objc_msgSend(fromCopy, "position") + 1, v72 <= objc_msgSend(fromCopy, "length")))
          {
            data17 = [fromCopy data];
            [data17 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v69;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v69 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__dogsAssetCount;
          v23 = v70++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__dogsAssetCount;
        goto LABEL_291;
      case 0x11u:
        v24 = 0;
        v25 = 0;
        v17 = 0;
        v5->_hasApparelAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data18 = [fromCopy data];
            [data18 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v24;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v24 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__apparelAssetCount;
          v23 = v25++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__apparelAssetCount;
        goto LABEL_291;
      case 0x12u:
        v89 = 0;
        v90 = 0;
        v17 = 0;
        v5->_hasFoodAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v91 = [fromCopy position] + 1;
          if (v91 >= [fromCopy position] && (v92 = objc_msgSend(fromCopy, "position") + 1, v92 <= objc_msgSend(fromCopy, "length")))
          {
            data19 = [fromCopy data];
            [data19 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v89;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v89 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__foodAssetCount;
          v23 = v90++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__foodAssetCount;
        goto LABEL_291;
      case 0x13u:
        v119 = 0;
        v120 = 0;
        v17 = 0;
        v5->_hasStorefrontAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v121 = [fromCopy position] + 1;
          if (v121 >= [fromCopy position] && (v122 = objc_msgSend(fromCopy, "position") + 1, v122 <= objc_msgSend(fromCopy, "length")))
          {
            data20 = [fromCopy data];
            [data20 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v119;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v119 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__storefrontAssetCount;
          v23 = v120++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__storefrontAssetCount;
        goto LABEL_291;
      case 0x14u:
        v139 = 0;
        v140 = 0;
        v17 = 0;
        v5->_hasSignSymbolAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v141 = [fromCopy position] + 1;
          if (v141 >= [fromCopy position] && (v142 = objc_msgSend(fromCopy, "position") + 1, v142 <= objc_msgSend(fromCopy, "length")))
          {
            data21 = [fromCopy data];
            [data21 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v139;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v139 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__signSymbolAssetCount;
          v23 = v140++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__signSymbolAssetCount;
        goto LABEL_291;
      case 0x15u:
        v94 = 0;
        v95 = 0;
        v17 = 0;
        v5->_hasLaundryCareSymbolAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v96 = [fromCopy position] + 1;
          if (v96 >= [fromCopy position] && (v97 = objc_msgSend(fromCopy, "position") + 1, v97 <= objc_msgSend(fromCopy, "length")))
          {
            data22 = [fromCopy data];
            [data22 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v94;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v94 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__laundryCareSymbolAssetCount;
          v23 = v95++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__laundryCareSymbolAssetCount;
        goto LABEL_291;
      case 0x16u:
        v104 = 0;
        v105 = 0;
        v17 = 0;
        v5->_hasAutoSymbolAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v106 = [fromCopy position] + 1;
          if (v106 >= [fromCopy position] && (v107 = objc_msgSend(fromCopy, "position") + 1, v107 <= objc_msgSend(fromCopy, "length")))
          {
            data23 = [fromCopy data];
            [data23 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v104;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v104 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__autoSymbolAssetCount;
          v23 = v105++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__autoSymbolAssetCount;
        goto LABEL_291;
      case 0x17u:
        v134 = 0;
        v135 = 0;
        v17 = 0;
        v5->_hasBrandLogoSymbolAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v136 = [fromCopy position] + 1;
          if (v136 >= [fromCopy position] && (v137 = objc_msgSend(fromCopy, "position") + 1, v137 <= objc_msgSend(fromCopy, "length")))
          {
            data24 = [fromCopy data];
            [data24 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v134;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v134 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__brandLogoSymbolAssetCount;
          v23 = v135++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__brandLogoSymbolAssetCount;
        goto LABEL_291;
      case 0x18u:
        v144 = 0;
        v145 = 0;
        v17 = 0;
        v5->_hasObject2DAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v146 = [fromCopy position] + 1;
          if (v146 >= [fromCopy position] && (v147 = objc_msgSend(fromCopy, "position") + 1, v147 <= objc_msgSend(fromCopy, "length")))
          {
            data25 = [fromCopy data];
            [data25 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v144;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v144 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__object2DAssetCount;
          v23 = v145++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__object2DAssetCount;
        goto LABEL_291;
      case 0x19u:
        v59 = 0;
        v60 = 0;
        v17 = 0;
        v5->_hasBarcodeDetectionAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v61 = [fromCopy position] + 1;
          if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
          {
            data26 = [fromCopy data];
            [data26 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v59;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v59 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__barcodeDetectionAssetCount;
          v23 = v60++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__barcodeDetectionAssetCount;
        goto LABEL_291;
      case 0x1Au:
        v54 = 0;
        v55 = 0;
        v17 = 0;
        v5->_hasSculptureAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v56 = [fromCopy position] + 1;
          if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 1, v57 <= objc_msgSend(fromCopy, "length")))
          {
            data27 = [fromCopy data];
            [data27 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v54;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v54 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__sculptureAssetCount;
          v23 = v55++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__sculptureAssetCount;
        goto LABEL_291;
      case 0x1Bu:
        v149 = 0;
        v150 = 0;
        v17 = 0;
        v5->_hasSkylineAssetCount = 1;
        break;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_296;
        }

        continue;
    }

    while (1)
    {
      v157 = 0;
      v151 = [fromCopy position] + 1;
      if (v151 >= [fromCopy position] && (v152 = objc_msgSend(fromCopy, "position") + 1, v152 <= objc_msgSend(fromCopy, "length")))
      {
        data28 = [fromCopy data];
        [data28 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v17 |= (v157 & 0x7F) << v149;
      if ((v157 & 0x80) == 0)
      {
        break;
      }

      v21 = 0;
      v149 += 7;
      v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__skylineAssetCount;
      v23 = v150++ > 8;
      if (v23)
      {
        goto LABEL_294;
      }
    }

    v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__skylineAssetCount;
LABEL_291:
    if ([fromCopy hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

LABEL_294:
    *(&v5->super.super.isa + *v22) = v21;
  }

  if (([fromCopy hasError] & 1) == 0)
  {
    goto LABEL_297;
  }

LABEL_296:
  v154 = 0;
LABEL_298:

  return v154;
}

- (NSString)description
{
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts parsedAssetCount](self, "parsedAssetCount")}];
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts anyDomainAssetCount](self, "anyDomainAssetCount")}];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts artAssetCount](self, "artAssetCount")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts natureAssetCount](self, "natureAssetCount")}];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts animalsAssetCount](self, "animalsAssetCount")}];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts birdsAssetCount](self, "birdsAssetCount")}];
  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts insectsAssetCount](self, "insectsAssetCount")}];
  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts reptilesAssetCount](self, "reptilesAssetCount")}];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts mammalsAssetCount](self, "mammalsAssetCount")}];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts landmarkAssetCount](self, "landmarkAssetCount")}];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts naturalLandmarkAssetCount](self, "naturalLandmarkAssetCount")}];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts mediaAssetCount](self, "mediaAssetCount")}];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts bookAssetCount](self, "bookAssetCount")}];
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts albumAssetCount](self, "albumAssetCount")}];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts catsAssetCount](self, "catsAssetCount")}];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts dogsAssetCount](self, "dogsAssetCount")}];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts apparelAssetCount](self, "apparelAssetCount")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts foodAssetCount](self, "foodAssetCount")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts storefrontAssetCount](self, "storefrontAssetCount")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts signSymbolAssetCount](self, "signSymbolAssetCount")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts laundryCareSymbolAssetCount](self, "laundryCareSymbolAssetCount")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts autoSymbolAssetCount](self, "autoSymbolAssetCount")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts brandLogoSymbolAssetCount](self, "brandLogoSymbolAssetCount")}];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts object2DAssetCount](self, "object2DAssetCount")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts barcodeDetectionAssetCount](self, "barcodeDetectionAssetCount")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts sculptureAssetCount](self, "sculptureAssetCount")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts skylineAssetCount](self, "skylineAssetCount")}];
  v20 = [v19 initWithFormat:@"BMPerBatchDomainSpecificAssetCounts with parsedAssetCount: %@, anyDomainAssetCount: %@, artAssetCount: %@, natureAssetCount: %@, animalsAssetCount: %@, birdsAssetCount: %@, insectsAssetCount: %@, reptilesAssetCount: %@, mammalsAssetCount: %@, landmarkAssetCount: %@, naturalLandmarkAssetCount: %@, mediaAssetCount: %@, bookAssetCount: %@, albumAssetCount: %@, catsAssetCount: %@, dogsAssetCount: %@, apparelAssetCount: %@, foodAssetCount: %@, storefrontAssetCount: %@, signSymbolAssetCount: %@, laundryCareSymbolAssetCount: %@, autoSymbolAssetCount: %@, brandLogoSymbolAssetCount: %@, object2DAssetCount: %@, barcodeDetectionAssetCount: %@, sculptureAssetCount: %@, skylineAssetCount: %@", v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9, v8, v3, v4, v5, v6];

  return v20;
}

- (BMPerBatchDomainSpecificAssetCounts)initWithParsedAssetCount:(id)count anyDomainAssetCount:(id)assetCount artAssetCount:(id)artAssetCount natureAssetCount:(id)natureAssetCount animalsAssetCount:(id)animalsAssetCount birdsAssetCount:(id)birdsAssetCount insectsAssetCount:(id)insectsAssetCount reptilesAssetCount:(id)self0 mammalsAssetCount:(id)self1 landmarkAssetCount:(id)self2 naturalLandmarkAssetCount:(id)self3 mediaAssetCount:(id)self4 bookAssetCount:(id)self5 albumAssetCount:(id)self6 catsAssetCount:(id)self7 dogsAssetCount:(id)self8 apparelAssetCount:(id)self9 foodAssetCount:(id)foodAssetCount storefrontAssetCount:(id)storefrontAssetCount signSymbolAssetCount:(id)symbolAssetCount laundryCareSymbolAssetCount:(id)careSymbolAssetCount autoSymbolAssetCount:(id)autoSymbolAssetCount brandLogoSymbolAssetCount:(id)logoSymbolAssetCount object2DAssetCount:(id)dAssetCount barcodeDetectionAssetCount:(id)detectionAssetCount sculptureAssetCount:(id)sculptureAssetCount skylineAssetCount:(id)skylineAssetCount
{
  countCopy = count;
  assetCountCopy = assetCount;
  artAssetCountCopy = artAssetCount;
  natureAssetCountCopy = natureAssetCount;
  animalsAssetCountCopy = animalsAssetCount;
  birdsAssetCountCopy = birdsAssetCount;
  insectsAssetCountCopy = insectsAssetCount;
  reptilesAssetCountCopy = reptilesAssetCount;
  mammalsAssetCountCopy = mammalsAssetCount;
  landmarkAssetCountCopy = landmarkAssetCount;
  naturalLandmarkAssetCountCopy = naturalLandmarkAssetCount;
  mediaAssetCountCopy = mediaAssetCount;
  bookAssetCountCopy = bookAssetCount;
  albumAssetCountCopy = albumAssetCount;
  catsAssetCountCopy = catsAssetCount;
  dogsAssetCountCopy = dogsAssetCount;
  apparelAssetCountCopy = apparelAssetCount;
  foodAssetCountCopy = foodAssetCount;
  storefrontAssetCountCopy = storefrontAssetCount;
  symbolAssetCountCopy = symbolAssetCount;
  careSymbolAssetCountCopy = careSymbolAssetCount;
  autoSymbolAssetCountCopy = autoSymbolAssetCount;
  logoSymbolAssetCountCopy = logoSymbolAssetCount;
  dAssetCountCopy = dAssetCount;
  detectionAssetCountCopy = detectionAssetCount;
  sculptureAssetCountCopy = sculptureAssetCount;
  skylineAssetCountCopy = skylineAssetCount;
  v91.receiver = self;
  v91.super_class = BMPerBatchDomainSpecificAssetCounts;
  v43 = [(BMEventBase *)&v91 init];
  if (v43)
  {
    v43->_dataVersion = [objc_opt_class() latestDataVersion];
    if (countCopy)
    {
      v43->_hasParsedAssetCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v43->_hasParsedAssetCount = 0;
      intValue = -1;
    }

    v43->_parsedAssetCount = intValue;
    if (assetCountCopy)
    {
      v43->_hasAnyDomainAssetCount = 1;
      intValue2 = [assetCountCopy intValue];
    }

    else
    {
      v43->_hasAnyDomainAssetCount = 0;
      intValue2 = -1;
    }

    v43->_anyDomainAssetCount = intValue2;
    if (artAssetCountCopy)
    {
      v43->_hasArtAssetCount = 1;
      intValue3 = [artAssetCountCopy intValue];
    }

    else
    {
      v43->_hasArtAssetCount = 0;
      intValue3 = -1;
    }

    v43->_artAssetCount = intValue3;
    if (natureAssetCountCopy)
    {
      v43->_hasNatureAssetCount = 1;
      intValue4 = [natureAssetCountCopy intValue];
    }

    else
    {
      v43->_hasNatureAssetCount = 0;
      intValue4 = -1;
    }

    v43->_natureAssetCount = intValue4;
    if (animalsAssetCountCopy)
    {
      v43->_hasAnimalsAssetCount = 1;
      intValue5 = [animalsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasAnimalsAssetCount = 0;
      intValue5 = -1;
    }

    v43->_animalsAssetCount = intValue5;
    if (birdsAssetCountCopy)
    {
      v43->_hasBirdsAssetCount = 1;
      intValue6 = [birdsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasBirdsAssetCount = 0;
      intValue6 = -1;
    }

    v43->_birdsAssetCount = intValue6;
    if (insectsAssetCountCopy)
    {
      v43->_hasInsectsAssetCount = 1;
      intValue7 = [insectsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasInsectsAssetCount = 0;
      intValue7 = -1;
    }

    v43->_insectsAssetCount = intValue7;
    if (reptilesAssetCountCopy)
    {
      v43->_hasReptilesAssetCount = 1;
      intValue8 = [reptilesAssetCountCopy intValue];
    }

    else
    {
      v43->_hasReptilesAssetCount = 0;
      intValue8 = -1;
    }

    v43->_reptilesAssetCount = intValue8;
    if (mammalsAssetCountCopy)
    {
      v43->_hasMammalsAssetCount = 1;
      intValue9 = [mammalsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasMammalsAssetCount = 0;
      intValue9 = -1;
    }

    v43->_mammalsAssetCount = intValue9;
    if (landmarkAssetCountCopy)
    {
      v43->_hasLandmarkAssetCount = 1;
      intValue10 = [landmarkAssetCountCopy intValue];
    }

    else
    {
      v43->_hasLandmarkAssetCount = 0;
      intValue10 = -1;
    }

    v43->_landmarkAssetCount = intValue10;
    if (naturalLandmarkAssetCountCopy)
    {
      v43->_hasNaturalLandmarkAssetCount = 1;
      intValue11 = [naturalLandmarkAssetCountCopy intValue];
    }

    else
    {
      v43->_hasNaturalLandmarkAssetCount = 0;
      intValue11 = -1;
    }

    v43->_naturalLandmarkAssetCount = intValue11;
    if (mediaAssetCountCopy)
    {
      v43->_hasMediaAssetCount = 1;
      intValue12 = [mediaAssetCountCopy intValue];
    }

    else
    {
      v43->_hasMediaAssetCount = 0;
      intValue12 = -1;
    }

    v43->_mediaAssetCount = intValue12;
    if (bookAssetCountCopy)
    {
      v43->_hasBookAssetCount = 1;
      intValue13 = [bookAssetCountCopy intValue];
    }

    else
    {
      v43->_hasBookAssetCount = 0;
      intValue13 = -1;
    }

    v43->_bookAssetCount = intValue13;
    if (albumAssetCountCopy)
    {
      v43->_hasAlbumAssetCount = 1;
      intValue14 = [albumAssetCountCopy intValue];
    }

    else
    {
      v43->_hasAlbumAssetCount = 0;
      intValue14 = -1;
    }

    v43->_albumAssetCount = intValue14;
    if (catsAssetCountCopy)
    {
      v43->_hasCatsAssetCount = 1;
      intValue15 = [catsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasCatsAssetCount = 0;
      intValue15 = -1;
    }

    v43->_catsAssetCount = intValue15;
    if (dogsAssetCountCopy)
    {
      v43->_hasDogsAssetCount = 1;
      intValue16 = [dogsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasDogsAssetCount = 0;
      intValue16 = -1;
    }

    v43->_dogsAssetCount = intValue16;
    if (apparelAssetCountCopy)
    {
      v43->_hasApparelAssetCount = 1;
      intValue17 = [apparelAssetCountCopy intValue];
    }

    else
    {
      v43->_hasApparelAssetCount = 0;
      intValue17 = -1;
    }

    v43->_apparelAssetCount = intValue17;
    if (foodAssetCountCopy)
    {
      v43->_hasFoodAssetCount = 1;
      intValue18 = [foodAssetCountCopy intValue];
    }

    else
    {
      v43->_hasFoodAssetCount = 0;
      intValue18 = -1;
    }

    v43->_foodAssetCount = intValue18;
    if (storefrontAssetCountCopy)
    {
      v43->_hasStorefrontAssetCount = 1;
      intValue19 = [storefrontAssetCountCopy intValue];
    }

    else
    {
      v43->_hasStorefrontAssetCount = 0;
      intValue19 = -1;
    }

    v43->_storefrontAssetCount = intValue19;
    if (symbolAssetCountCopy)
    {
      v43->_hasSignSymbolAssetCount = 1;
      intValue20 = [symbolAssetCountCopy intValue];
    }

    else
    {
      v43->_hasSignSymbolAssetCount = 0;
      intValue20 = -1;
    }

    v43->_signSymbolAssetCount = intValue20;
    if (careSymbolAssetCountCopy)
    {
      v43->_hasLaundryCareSymbolAssetCount = 1;
      intValue21 = [careSymbolAssetCountCopy intValue];
    }

    else
    {
      v43->_hasLaundryCareSymbolAssetCount = 0;
      intValue21 = -1;
    }

    v43->_laundryCareSymbolAssetCount = intValue21;
    if (autoSymbolAssetCountCopy)
    {
      v43->_hasAutoSymbolAssetCount = 1;
      intValue22 = [autoSymbolAssetCountCopy intValue];
    }

    else
    {
      v43->_hasAutoSymbolAssetCount = 0;
      intValue22 = -1;
    }

    v43->_autoSymbolAssetCount = intValue22;
    if (logoSymbolAssetCountCopy)
    {
      v43->_hasBrandLogoSymbolAssetCount = 1;
      intValue23 = [logoSymbolAssetCountCopy intValue];
    }

    else
    {
      v43->_hasBrandLogoSymbolAssetCount = 0;
      intValue23 = -1;
    }

    v43->_brandLogoSymbolAssetCount = intValue23;
    if (dAssetCountCopy)
    {
      v43->_hasObject2DAssetCount = 1;
      intValue24 = [dAssetCountCopy intValue];
    }

    else
    {
      v43->_hasObject2DAssetCount = 0;
      intValue24 = -1;
    }

    v43->_object2DAssetCount = intValue24;
    if (detectionAssetCountCopy)
    {
      v43->_hasBarcodeDetectionAssetCount = 1;
      intValue25 = [detectionAssetCountCopy intValue];
    }

    else
    {
      v43->_hasBarcodeDetectionAssetCount = 0;
      intValue25 = -1;
    }

    v43->_barcodeDetectionAssetCount = intValue25;
    if (sculptureAssetCountCopy)
    {
      v43->_hasSculptureAssetCount = 1;
      intValue26 = [sculptureAssetCountCopy intValue];
    }

    else
    {
      v43->_hasSculptureAssetCount = 0;
      intValue26 = -1;
    }

    v43->_sculptureAssetCount = intValue26;
    if (skylineAssetCountCopy)
    {
      v43->_hasSkylineAssetCount = 1;
      intValue27 = [skylineAssetCountCopy intValue];
    }

    else
    {
      v43->_hasSkylineAssetCount = 0;
      intValue27 = -1;
    }

    v43->_skylineAssetCount = intValue27;
  }

  return v43;
}

+ (id)protoFields
{
  v32[27] = *MEMORY[0x1E69E9840];
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parsedAssetCount" number:1 type:2 subMessageClass:0];
  v32[0] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"anyDomainAssetCount" number:2 type:2 subMessageClass:0];
  v32[1] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"artAssetCount" number:3 type:2 subMessageClass:0];
  v32[2] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"natureAssetCount" number:4 type:2 subMessageClass:0];
  v32[3] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"animalsAssetCount" number:5 type:2 subMessageClass:0];
  v32[4] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"birdsAssetCount" number:6 type:2 subMessageClass:0];
  v32[5] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"insectsAssetCount" number:7 type:2 subMessageClass:0];
  v32[6] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reptilesAssetCount" number:8 type:2 subMessageClass:0];
  v32[7] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mammalsAssetCount" number:9 type:2 subMessageClass:0];
  v32[8] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"landmarkAssetCount" number:10 type:2 subMessageClass:0];
  v32[9] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"naturalLandmarkAssetCount" number:11 type:2 subMessageClass:0];
  v32[10] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaAssetCount" number:12 type:2 subMessageClass:0];
  v32[11] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bookAssetCount" number:13 type:2 subMessageClass:0];
  v32[12] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"albumAssetCount" number:14 type:2 subMessageClass:0];
  v32[13] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"catsAssetCount" number:15 type:2 subMessageClass:0];
  v32[14] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dogsAssetCount" number:16 type:2 subMessageClass:0];
  v32[15] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"apparelAssetCount" number:17 type:2 subMessageClass:0];
  v32[16] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"foodAssetCount" number:18 type:2 subMessageClass:0];
  v32[17] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"storefrontAssetCount" number:19 type:2 subMessageClass:0];
  v32[18] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"signSymbolAssetCount" number:20 type:2 subMessageClass:0];
  v32[19] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"laundryCareSymbolAssetCount" number:21 type:2 subMessageClass:0];
  v32[20] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"autoSymbolAssetCount" number:22 type:2 subMessageClass:0];
  v32[21] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brandLogoSymbolAssetCount" number:23 type:2 subMessageClass:0];
  v32[22] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"object2DAssetCount" number:24 type:2 subMessageClass:0];
  v32[23] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"barcodeDetectionAssetCount" number:25 type:2 subMessageClass:0];
  v32[24] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sculptureAssetCount" number:26 type:2 subMessageClass:0];
  v32[25] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"skylineAssetCount" number:27 type:2 subMessageClass:0];
  v32[26] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:27];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v32[27] = *MEMORY[0x1E69E9840];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"parsedAssetCount" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"anyDomainAssetCount" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"artAssetCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"natureAssetCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"animalsAssetCount" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"birdsAssetCount" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"insectsAssetCount" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reptilesAssetCount" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mammalsAssetCount" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:2 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"landmarkAssetCount" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"naturalLandmarkAssetCount" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaAssetCount" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:2 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bookAssetCount" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:2 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"albumAssetCount" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:2 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"catsAssetCount" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:2 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dogsAssetCount" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"apparelAssetCount" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:2 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"foodAssetCount" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"storefrontAssetCount" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"signSymbolAssetCount" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"laundryCareSymbolAssetCount" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"autoSymbolAssetCount" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brandLogoSymbolAssetCount" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"object2DAssetCount" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"barcodeDetectionAssetCount" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sculptureAssetCount" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:2 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"skylineAssetCount" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:2 convertedType:0];
  v32[0] = v31;
  v32[1] = v30;
  v32[2] = v29;
  v32[3] = v28;
  v32[4] = v27;
  v32[5] = v26;
  v32[6] = v25;
  v32[7] = v24;
  v32[8] = v23;
  v32[9] = v22;
  v32[10] = v21;
  v32[11] = v20;
  v32[12] = v19;
  v32[13] = v18;
  v32[14] = v17;
  v32[15] = v16;
  v32[16] = v15;
  v32[17] = v2;
  v32[18] = v3;
  v32[19] = v4;
  v32[20] = v14;
  v32[21] = v5;
  v32[22] = v6;
  v32[23] = v7;
  v32[24] = v8;
  v32[25] = v13;
  v32[26] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:27];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
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

    v8 = [[BMPerBatchDomainSpecificAssetCounts alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end
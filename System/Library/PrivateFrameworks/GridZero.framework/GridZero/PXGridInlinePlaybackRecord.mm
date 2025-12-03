@interface PXGridInlinePlaybackRecord
- ($34D5C35368F688BCCD66CCEA543B57DA)bestVideoTimeRange;
- (NSString)diagnosticScoresDescription;
- (PXGridInlinePlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference;
- (id)description;
- (void)setBestVideoTimeRange:(id *)range;
@end

@implementation PXGridInlinePlaybackRecord

- (void)setBestVideoTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_bestVideoTimeRange.start.epoch = *&range->var0.var3;
  *&self->_bestVideoTimeRange.duration.timescale = v4;
  *&self->_bestVideoTimeRange.start.value = v3;
}

- ($34D5C35368F688BCCD66CCEA543B57DA)bestVideoTimeRange
{
  v3 = *&self[2].var0.var3;
  *&retstr->var0.var0 = *&self[2].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var1;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  displayAsset = [(PXGridInlinePlaybackRecord *)self displayAsset];
  geometryReference = [(PXGridInlinePlaybackRecord *)self geometryReference];
  diagnosticScoresDescription = [(PXGridInlinePlaybackRecord *)self diagnosticScoresDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p, displayAsset=%@, geometryReference=%@, %@>", v5, self, displayAsset, geometryReference, diagnosticScoresDescription];

  return v9;
}

- (NSString)diagnosticScoresDescription
{
  v3 = MEMORY[0x277CCACA8];
  visibilityScore = [(PXGridInlinePlaybackRecord *)self visibilityScore];
  [(PXGridInlinePlaybackRecord *)self cellSizeScore];
  v6 = v5;
  [(PXGridInlinePlaybackRecord *)self distanceToCenterScore];
  v8 = v7;
  [(PXGridInlinePlaybackRecord *)self videoScore];
  v10 = v9;
  [(PXGridInlinePlaybackRecord *)self curationScore];
  v12 = v11;
  [(PXGridInlinePlaybackRecord *)self bestVideoTimeRange];
  v13 = CMTimeRangeCopyDescription(0, &range);
  [(PXGridInlinePlaybackRecord *)self videoStickerSuggestionScore];
  v15 = v14;
  [(PXGridInlinePlaybackRecord *)self stickerConfidenceScore];
  v17 = [v3 stringWithFormat:@"visibilityScore=%lu, cellSizeScore=%f, distanceToCenterScore=%f, videoScore=%f, curationScore=%f, bestVideoTimeRange=%@, videoStickerSuggestionScore=%f, stickerConfidenceScore=%f", visibilityScore, v6, v8, *&v10, *&v12, v13, *&v15, v16];

  return v17;
}

- (PXGridInlinePlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference
{
  assetCopy = asset;
  providerCopy = provider;
  referenceCopy = reference;
  v15.receiver = self;
  v15.super_class = PXGridInlinePlaybackRecord;
  v12 = [(PXGridInlinePlaybackRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_displayAsset, asset);
    objc_storeStrong(&v13->_mediaProvider, provider);
    objc_storeStrong(&v13->_geometryReference, reference);
  }

  return v13;
}

@end
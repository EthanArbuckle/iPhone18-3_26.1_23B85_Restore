@interface HKAudiogramLineSeries
+ (id)audiogramLineSeriesForSeriesEar:(int64_t)ear selectedEar:(int64_t)selectedEar disableConnectionLines:(BOOL)lines;
+ (id)audiogramLineSeriesForSeriesEar:(int64_t)ear selectedEar:(int64_t)selectedEar disableConnectionLines:(BOOL)lines disabledStyleOverride:(BOOL)override selectedFrequency:(id)frequency;
+ (id)filledSymbolUsingMetadata:(id)metadata forEar:(int64_t)ear radius:(double)radius useEarSpecificColor:(BOOL)color;
+ (id)selectedRangeMetadataForAudiogram:(id)audiogram side:(int64_t)side backgroundColor:(id)color;
+ (id)selectedRangeMetadataWith:(id)with;
- (HKAudiogramLineSeries)init;
- (id)filteredPointSelectionContexts:(id)contexts forTouchPoints:(id)points resultsDidChange:(BOOL *)change;
- (id)pointMarkerImageForPointMarkerStyle:(id)style;
- (void)drawLegendPointLabelInContext:(CGContext *)context point:(CGPoint)point untransformedPoint:(CGPoint)untransformedPoint axisRect:(CGRect)rect presentationStyle:(id)style leftOfPoint:(BOOL)ofPoint;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)renderPointMarkersInContext:(CGContext *)context blockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform pointMarkerStyle:(id)style selectedBoundsMarkerStyle:(id)markerStyle selectedPointMarkerStyle:(id)pointMarkerStyle;
@end

@implementation HKAudiogramLineSeries

+ (id)audiogramLineSeriesForSeriesEar:(int64_t)ear selectedEar:(int64_t)selectedEar disableConnectionLines:(BOOL)lines
{
  v5 = sub_1C3C728D0(ear, selectedEar, lines);

  return v5;
}

+ (id)audiogramLineSeriesForSeriesEar:(int64_t)ear selectedEar:(int64_t)selectedEar disableConnectionLines:(BOOL)lines disabledStyleOverride:(BOOL)override selectedFrequency:(id)frequency
{
  frequencyCopy = frequency;
  v13 = sub_1C3C72C60(ear, selectedEar, lines, override, frequency);

  return v13;
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = *&transform->c;
  v24[0] = *&transform->a;
  v24[1] = v18;
  v24[2] = *&transform->tx;
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  contextCopy = context;
  renderContextCopy = renderContext;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C3C70AB4(coordinatesCopy, configurationCopy, v24, contextCopy, renderContextCopy, delegate, x, y, width, height);

  swift_unknownObjectRelease();
}

- (id)pointMarkerImageForPointMarkerStyle:(id)style
{
  v8 = 1;
  styleCopy = style;
  selfCopy = self;
  v6 = sub_1C3C70D98(styleCopy, &v8);

  return v6;
}

- (void)renderPointMarkersInContext:(CGContext *)context blockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform pointMarkerStyle:(id)style selectedBoundsMarkerStyle:(id)markerStyle selectedPointMarkerStyle:(id)pointMarkerStyle
{
  v13 = *&transform->c;
  v20[0] = *&transform->a;
  v20[1] = v13;
  v20[2] = *&transform->tx;
  contextCopy = context;
  coordinatesCopy = coordinates;
  styleCopy = style;
  markerStyleCopy = markerStyle;
  pointMarkerStyleCopy = pointMarkerStyle;
  selfCopy = self;
  sub_1C3C71344(contextCopy, coordinatesCopy, v20, styleCopy, markerStyleCopy, pointMarkerStyleCopy);
}

- (void)drawLegendPointLabelInContext:(CGContext *)context point:(CGPoint)point untransformedPoint:(CGPoint)untransformedPoint axisRect:(CGRect)rect presentationStyle:(id)style leftOfPoint:(BOOL)ofPoint
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14 = point.y;
  v15 = point.x;
  contextCopy = context;
  styleCopy = style;
  selfCopy = self;
  sub_1C3C732B4(styleCopy, ofPoint, v15, v14, x, y, width, height);
}

- (id)filteredPointSelectionContexts:(id)contexts forTouchPoints:(id)points resultsDidChange:(BOOL *)change
{
  sub_1C3C27CB4(0, &unk_1EC0866A0);
  v7 = sub_1C3D202B4();
  sub_1C3C27CB4(0, &qword_1EC086590);
  v8 = sub_1C3D202B4();
  selfCopy = self;
  sub_1C3C73500(v7, v8, change);

  v10 = sub_1C3D202A4();

  return v10;
}

+ (id)selectedRangeMetadataForAudiogram:(id)audiogram side:(int64_t)side backgroundColor:(id)color
{
  audiogramCopy = audiogram;
  colorCopy = color;
  v9 = _s8HealthUI20AudiogramPointMarkerV7OptionsV03forC0_4sideSayAEGSo17HKAudiogramSampleC_So0I19SensitivityTestSideVtFZ_0(audiogramCopy, side);
  v10 = sub_1C3C73968(v9, colorCopy);

  return v10;
}

+ (id)selectedRangeMetadataWith:(id)with
{
  withCopy = with;
  if ([withCopy isMasked])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  sub_1C3C745F4(0, &unk_1EC086560, &type metadata for AudiogramPointMarker.Options, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C3D5F370;
  *(v5 + 32) = v4;
  v6 = sub_1C3C73968(v5, 0);

  return v6;
}

+ (id)filledSymbolUsingMetadata:(id)metadata forEar:(int64_t)ear radius:(double)radius useEarSpecificColor:(BOOL)color
{
  colorCopy = color;
  metadataCopy = metadata;
  v10 = sub_1C3C73D38(metadataCopy, ear, colorCopy, radius);

  return v10;
}

- (HKAudiogramLineSeries)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
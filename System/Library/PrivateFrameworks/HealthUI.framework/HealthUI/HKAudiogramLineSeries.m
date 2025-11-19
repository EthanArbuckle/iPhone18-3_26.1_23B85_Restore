@interface HKAudiogramLineSeries
+ (id)audiogramLineSeriesForSeriesEar:(int64_t)a3 selectedEar:(int64_t)a4 disableConnectionLines:(BOOL)a5;
+ (id)audiogramLineSeriesForSeriesEar:(int64_t)a3 selectedEar:(int64_t)a4 disableConnectionLines:(BOOL)a5 disabledStyleOverride:(BOOL)a6 selectedFrequency:(id)a7;
+ (id)filledSymbolUsingMetadata:(id)a3 forEar:(int64_t)a4 radius:(double)a5 useEarSpecificColor:(BOOL)a6;
+ (id)selectedRangeMetadataForAudiogram:(id)a3 side:(int64_t)a4 backgroundColor:(id)a5;
+ (id)selectedRangeMetadataWith:(id)a3;
- (HKAudiogramLineSeries)init;
- (id)filteredPointSelectionContexts:(id)a3 forTouchPoints:(id)a4 resultsDidChange:(BOOL *)a5;
- (id)pointMarkerImageForPointMarkerStyle:(id)a3;
- (void)drawLegendPointLabelInContext:(CGContext *)a3 point:(CGPoint)a4 untransformedPoint:(CGPoint)a5 axisRect:(CGRect)a6 presentationStyle:(id)a7 leftOfPoint:(BOOL)a8;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)renderPointMarkersInContext:(CGContext *)a3 blockCoordinates:(id)a4 pointTransform:(CGAffineTransform *)a5 pointMarkerStyle:(id)a6 selectedBoundsMarkerStyle:(id)a7 selectedPointMarkerStyle:(id)a8;
@end

@implementation HKAudiogramLineSeries

+ (id)audiogramLineSeriesForSeriesEar:(int64_t)a3 selectedEar:(int64_t)a4 disableConnectionLines:(BOOL)a5
{
  v5 = sub_1C3C728D0(a3, a4, a5);

  return v5;
}

+ (id)audiogramLineSeriesForSeriesEar:(int64_t)a3 selectedEar:(int64_t)a4 disableConnectionLines:(BOOL)a5 disabledStyleOverride:(BOOL)a6 selectedFrequency:(id)a7
{
  v12 = a7;
  v13 = sub_1C3C72C60(a3, a4, a5, a6, a7);

  return v13;
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = *&a6->c;
  v24[0] = *&a6->a;
  v24[1] = v18;
  v24[2] = *&a6->tx;
  v19 = a3;
  v20 = a5;
  v21 = a7;
  v22 = a8;
  swift_unknownObjectRetain();
  v23 = self;
  sub_1C3C70AB4(v19, v20, v24, v21, v22, a9, x, y, width, height);

  swift_unknownObjectRelease();
}

- (id)pointMarkerImageForPointMarkerStyle:(id)a3
{
  v8 = 1;
  v4 = a3;
  v5 = self;
  v6 = sub_1C3C70D98(v4, &v8);

  return v6;
}

- (void)renderPointMarkersInContext:(CGContext *)a3 blockCoordinates:(id)a4 pointTransform:(CGAffineTransform *)a5 pointMarkerStyle:(id)a6 selectedBoundsMarkerStyle:(id)a7 selectedPointMarkerStyle:(id)a8
{
  v13 = *&a5->c;
  v20[0] = *&a5->a;
  v20[1] = v13;
  v20[2] = *&a5->tx;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = self;
  sub_1C3C71344(v14, v15, v20, v16, v17, v18);
}

- (void)drawLegendPointLabelInContext:(CGContext *)a3 point:(CGPoint)a4 untransformedPoint:(CGPoint)a5 axisRect:(CGRect)a6 presentationStyle:(id)a7 leftOfPoint:(BOOL)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a4.y;
  v15 = a4.x;
  v17 = a3;
  v18 = a7;
  v19 = self;
  sub_1C3C732B4(v18, a8, v15, v14, x, y, width, height);
}

- (id)filteredPointSelectionContexts:(id)a3 forTouchPoints:(id)a4 resultsDidChange:(BOOL *)a5
{
  sub_1C3C27CB4(0, &unk_1EC0866A0);
  v7 = sub_1C3D202B4();
  sub_1C3C27CB4(0, &qword_1EC086590);
  v8 = sub_1C3D202B4();
  v9 = self;
  sub_1C3C73500(v7, v8, a5);

  v10 = sub_1C3D202A4();

  return v10;
}

+ (id)selectedRangeMetadataForAudiogram:(id)a3 side:(int64_t)a4 backgroundColor:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = _s8HealthUI20AudiogramPointMarkerV7OptionsV03forC0_4sideSayAEGSo17HKAudiogramSampleC_So0I19SensitivityTestSideVtFZ_0(v7, a4);
  v10 = sub_1C3C73968(v9, v8);

  return v10;
}

+ (id)selectedRangeMetadataWith:(id)a3
{
  v3 = a3;
  if ([v3 isMasked])
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

+ (id)filledSymbolUsingMetadata:(id)a3 forEar:(int64_t)a4 radius:(double)a5 useEarSpecificColor:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = sub_1C3C73D38(v9, a4, v6, a5);

  return v10;
}

- (HKAudiogramLineSeries)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
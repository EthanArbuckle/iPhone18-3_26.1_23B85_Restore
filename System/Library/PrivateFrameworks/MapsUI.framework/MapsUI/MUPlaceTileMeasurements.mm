@interface MUPlaceTileMeasurements
+ (id)defaultMeasurements;
@end

@implementation MUPlaceTileMeasurements

+ (id)defaultMeasurements
{
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  [mEMORY[0x1E696F3B8] screenScale];
  v4 = v3;

  v5 = objc_alloc_init(MUPlaceTileMeasurements);
  v6 = *MEMORY[0x1E69DDD00];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  v8 = [v7 _mapkit_fontWithSymbolicTraits:0x8000];
  v9 = *MEMORY[0x1E69DB980];
  v10 = [v8 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [v10 _scaledValueForValue:150.0];
  [(MUPlaceTileMeasurements *)v5 setTileWidth:?];

  v11 = MEMORY[0x1E69DCC10];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
  v13 = [v12 _mapkit_fontWithSymbolicTraits:0x8000];
  v14 = [v13 _mapkit_fontWithWeight:v9];
  [v11 _mapsui_maximumHeightWithFont:v14 numberOfLines:2 displayScale:v4];
  [(MUPlaceTileMeasurements *)v5 setMaxTitleHeight:?];

  v15 = MEMORY[0x1E69DCC10];
  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v15 _mapsui_maximumHeightWithFont:v16 numberOfLines:2 displayScale:v4];
  [(MUPlaceTileMeasurements *)v5 setMaxSubtitleHeight:?];

  v17 = MEMORY[0x1E69DCC10];
  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v19 = [v18 _mapkit_fontWithSymbolicTraits:0x8000];
  [v17 _mapsui_maximumHeightWithFont:v19 numberOfLines:2 displayScale:v4];
  [(MUPlaceTileMeasurements *)v5 setMaxFooterHeight:?];

  [(MUPlaceTileMeasurements *)v5 setDeviceScale:v4];

  return v5;
}

@end
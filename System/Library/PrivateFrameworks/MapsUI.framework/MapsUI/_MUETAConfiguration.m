@interface _MUETAConfiguration
+ (id)addStopConfigurationETAStringForTravelTime:(double)a3;
+ (id)configurationForEtaStringFor:(unint64_t)a3 travelTime:(double)a4 hasSecondaryController:(BOOL)a5 isStackingButtons:(BOOL)a6;
+ (id)rerouteConfigurationETAStringForTravelTime:(double)a3;
@end

@implementation _MUETAConfiguration

+ (id)configurationForEtaStringFor:(unint64_t)a3 travelTime:(double)a4 hasSecondaryController:(BOOL)a5 isStackingButtons:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = @"tram.fill";
  v11 = @"bicycle";
  if (a3 == 0xFFFFFFF)
  {
    v12 = @"arrow.triangle.turn.up.right.circle.fill";
  }

  else
  {
    v12 = 0;
  }

  if (a3 != 8)
  {
    v11 = v12;
  }

  if (a3 != 4)
  {
    v10 = v11;
  }

  v13 = @"car.fill";
  v14 = @"figure.walk";
  if (a3 != 2)
  {
    v14 = 0;
  }

  if (a3 != 1)
  {
    v13 = v14;
  }

  if (a3 <= 3)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

  v16 = objc_alloc_init(_MUETAConfiguration);
  [(_MUETAConfiguration *)v16 setSymbolName:v15];
  if (a3 == 0xFFFFFFF || a4 == 0.0)
  {
    v17 = _MULocalizedStringFromThisBundle(@"Directions [Placecard]");
  }

  else
  {
    if (a4 <= 0.0)
    {
      goto LABEL_21;
    }

    v17 = [MUPlaceHeaderETAFormatter etaStringFromSeconds:a4 isRenderingInFullWidth:!v7 | v6];
  }

  v18 = v17;
  [(_MUETAConfiguration *)v16 setEtaString:v17];

LABEL_21:

  return v16;
}

+ (id)addStopConfigurationETAStringForTravelTime:(double)a3
{
  v4 = objc_alloc_init(_MUETAConfiguration);
  if (a3 == 0.0)
  {
    v5 = _MULocalizedStringFromThisBundle(@"Add Stop [Placecard]");
    [(_MUETAConfiguration *)v4 setEtaString:v5];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v5 = _MULocalizedStringFromThisBundle(@"Add Stop With Detour Time [Placecard]");
    v7 = [MEMORY[0x1E696AEC0] _navigation_stringWithSeconds:a3 andAbbreviationType:1];
    v8 = [v6 stringWithFormat:v5, v7];
    [(_MUETAConfiguration *)v4 setEtaString:v8];
  }

  return v4;
}

+ (id)rerouteConfigurationETAStringForTravelTime:(double)a3
{
  v4 = objc_alloc_init(_MUETAConfiguration);
  v5 = MEMORY[0x1E696AEC0];
  v6 = _MULocalizedStringFromThisBundle(@"Reroute ETA button title [Placecard]");
  v7 = [MEMORY[0x1E696AEC0] _navigation_stringWithSeconds:a3 andAbbreviationType:1];
  v8 = [v5 stringWithFormat:v6, v7];
  [(_MUETAConfiguration *)v4 setEtaString:v8];

  return v4;
}

@end
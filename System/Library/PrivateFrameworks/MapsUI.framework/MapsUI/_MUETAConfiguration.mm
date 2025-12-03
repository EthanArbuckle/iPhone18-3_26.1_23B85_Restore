@interface _MUETAConfiguration
+ (id)addStopConfigurationETAStringForTravelTime:(double)time;
+ (id)configurationForEtaStringFor:(unint64_t)for travelTime:(double)time hasSecondaryController:(BOOL)controller isStackingButtons:(BOOL)buttons;
+ (id)rerouteConfigurationETAStringForTravelTime:(double)time;
@end

@implementation _MUETAConfiguration

+ (id)configurationForEtaStringFor:(unint64_t)for travelTime:(double)time hasSecondaryController:(BOOL)controller isStackingButtons:(BOOL)buttons
{
  buttonsCopy = buttons;
  controllerCopy = controller;
  v10 = @"tram.fill";
  v11 = @"bicycle";
  if (for == 0xFFFFFFF)
  {
    v12 = @"arrow.triangle.turn.up.right.circle.fill";
  }

  else
  {
    v12 = 0;
  }

  if (for != 8)
  {
    v11 = v12;
  }

  if (for != 4)
  {
    v10 = v11;
  }

  v13 = @"car.fill";
  v14 = @"figure.walk";
  if (for != 2)
  {
    v14 = 0;
  }

  if (for != 1)
  {
    v13 = v14;
  }

  if (for <= 3)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

  v16 = objc_alloc_init(_MUETAConfiguration);
  [(_MUETAConfiguration *)v16 setSymbolName:v15];
  if (for == 0xFFFFFFF || time == 0.0)
  {
    buttonsCopy = _MULocalizedStringFromThisBundle(@"Directions [Placecard]");
  }

  else
  {
    if (time <= 0.0)
    {
      goto LABEL_21;
    }

    buttonsCopy = [MUPlaceHeaderETAFormatter etaStringFromSeconds:time isRenderingInFullWidth:!controllerCopy | buttonsCopy];
  }

  v18 = buttonsCopy;
  [(_MUETAConfiguration *)v16 setEtaString:buttonsCopy];

LABEL_21:

  return v16;
}

+ (id)addStopConfigurationETAStringForTravelTime:(double)time
{
  v4 = objc_alloc_init(_MUETAConfiguration);
  if (time == 0.0)
  {
    v5 = _MULocalizedStringFromThisBundle(@"Add Stop [Placecard]");
    [(_MUETAConfiguration *)v4 setEtaString:v5];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v5 = _MULocalizedStringFromThisBundle(@"Add Stop With Detour Time [Placecard]");
    v7 = [MEMORY[0x1E696AEC0] _navigation_stringWithSeconds:time andAbbreviationType:1];
    v8 = [v6 stringWithFormat:v5, v7];
    [(_MUETAConfiguration *)v4 setEtaString:v8];
  }

  return v4;
}

+ (id)rerouteConfigurationETAStringForTravelTime:(double)time
{
  v4 = objc_alloc_init(_MUETAConfiguration);
  v5 = MEMORY[0x1E696AEC0];
  v6 = _MULocalizedStringFromThisBundle(@"Reroute ETA button title [Placecard]");
  v7 = [MEMORY[0x1E696AEC0] _navigation_stringWithSeconds:time andAbbreviationType:1];
  v8 = [v5 stringWithFormat:v6, v7];
  [(_MUETAConfiguration *)v4 setEtaString:v8];

  return v4;
}

@end
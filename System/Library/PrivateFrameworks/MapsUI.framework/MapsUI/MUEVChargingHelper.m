@interface MUEVChargingHelper
+ (id)localizedStringForAvailableChargers:(unint64_t)a3 outOfTotal:(unint64_t)a4;
+ (id)localizedStringForAvailableChargers:(unint64_t)a3 outOfTotal:(unint64_t)a4 radiowavesSymbolScale:(int64_t)a5;
@end

@implementation MUEVChargingHelper

+ (id)localizedStringForAvailableChargers:(unint64_t)a3 outOfTotal:(unint64_t)a4 radiowavesSymbolScale:(int64_t)a5
{
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = [a1 localizedStringForAvailableChargers:a3 outOfTotal:a4];
  v7 = MEMORY[0x1E69DCAB8];
  v8 = [MEMORY[0x1E69DCAD8] configurationWithScale:a5];
  v9 = [v7 systemImageNamed:@"dot.radiowaves.up.forward" withConfiguration:v8];

  v10 = MEMORY[0x1E69DB7F0];
  v11 = [v9 imageWithRenderingMode:2];
  v12 = [v10 textAttachmentWithImage:v11];

  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:{@" ", v13}];
  v20[1] = v14;
  v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v12];
  v20[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v17 = [MapsUILayout buildAttributedDisplayStringForComponents:v16 reverseIfRTLLayout:0];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)localizedStringForAvailableChargers:(unint64_t)a3 outOfTotal:(unint64_t)a4
{
  v6 = _MULocalizedStringFromThisBundle(@"[Placecard] Number of chargers available out of total");
  v7 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, a3, a4];

  return v7;
}

@end
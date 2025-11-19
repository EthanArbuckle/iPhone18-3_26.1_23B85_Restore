@interface CinematicFramingSessionFramingParameters
- (CinematicFramingSessionFramingParameters)initWithPlist:(id)a3;
- (CinematicFramingSessionFramingParameters)initWithPlistPath:(id)a3;
- (id)asDictionary;
- (void)_initializeWithPlist:(id)a3;
@end

@implementation CinematicFramingSessionFramingParameters

- (CinematicFramingSessionFramingParameters)initWithPlist:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CinematicFramingSessionFramingParameters;
  v5 = [(CinematicFramingSessionFramingParameters *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CinematicFramingSessionFramingParameters *)v5 _initializeWithPlist:v4];
    v7 = v6;
  }

  return v6;
}

- (CinematicFramingSessionFramingParameters)initWithPlistPath:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CinematicFramingSessionFramingParameters;
  v5 = [(CinematicFramingSessionFramingParameters *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
    v5 = [(CinematicFramingSessionFramingParameters *)v5 initWithPlist:v6];
  }

  return v5;
}

- (id)asDictionary
{
  v3 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionFramingParameters *)self deadbandWidthMinFraction];
  v4 = [v3 numberWithFloat:?];
  v20[0] = v4;
  v19[1] = @"deadbandWidthMaxFraction";
  v5 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionFramingParameters *)self deadbandWidthMaxFraction];
  v6 = [v5 numberWithFloat:?];
  v20[1] = v6;
  v19[2] = @"deadbandWidthFractionOfScreenWidth";
  v7 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionFramingParameters *)self deadbandWidthFractionOfScreenWidth];
  v8 = [v7 numberWithFloat:?];
  v20[2] = v8;
  v19[3] = @"deadbandHeightFractionOfScreenHeight";
  v9 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionFramingParameters *)self deadbandHeightFractionOfScreenHeight];
  v10 = [v9 numberWithFloat:?];
  v20[3] = v10;
  v19[4] = @"deadbandTopOffsetFractionOfScreenHeight";
  v11 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionFramingParameters *)self deadbandTopOffsetFractionOfScreenHeight];
  v12 = [v11 numberWithFloat:?];
  v20[4] = v12;
  v19[5] = @"subjectWidthPaddingMultiplier";
  v13 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionFramingParameters *)self subjectWidthPaddingMultiplier];
  v14 = [v13 numberWithFloat:?];
  v20[5] = v14;
  v19[6] = @"subjectHeightPaddingMultiplier";
  v15 = MEMORY[0x277CCABB0];
  [(CinematicFramingSessionFramingParameters *)self subjectHeightPaddingMultiplier];
  v16 = [v15 numberWithFloat:?];
  v20[6] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:7];

  return v17;
}

- (void)_initializeWithPlist:(id)a3
{
  v4 = a3;
  *&v5 = PlistReadFloat(v4, @"deadbandWidthMinFraction", 0.8);
  [(CinematicFramingSessionFramingParameters *)self setDeadbandWidthMinFraction:v5];
  *&v6 = PlistReadFloat(v4, @"deadbandWidthMaxFraction", 1.2);
  [(CinematicFramingSessionFramingParameters *)self setDeadbandWidthMaxFraction:v6];
  *&v7 = PlistReadFloat(v4, @"deadbandWidthFractionOfScreenWidth", 0.7);
  [(CinematicFramingSessionFramingParameters *)self setDeadbandWidthFractionOfScreenWidth:v7];
  *&v8 = PlistReadFloat(v4, @"deadbandHeightFractionOfScreenHeight", 0.5);
  [(CinematicFramingSessionFramingParameters *)self setDeadbandHeightFractionOfScreenHeight:v8];
  *&v9 = PlistReadFloat(v4, @"deadbandTopOffsetFractionOfScreenHeight", 0.1);
  [(CinematicFramingSessionFramingParameters *)self setDeadbandTopOffsetFractionOfScreenHeight:v9];
  *&v10 = PlistReadFloat(v4, @"subjectWidthPaddingMultiplier", 1.0);
  [(CinematicFramingSessionFramingParameters *)self setSubjectWidthPaddingMultiplier:v10];
  Float = PlistReadFloat(v4, @"subjectHeightPaddingMultiplier", 1.0);

  *&v12 = Float;

  [(CinematicFramingSessionFramingParameters *)self setSubjectHeightPaddingMultiplier:v12];
}

@end
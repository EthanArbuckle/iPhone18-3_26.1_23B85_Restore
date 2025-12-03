@interface VCPImageCompositionAnalyzer
- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
@end

@implementation VCPImageCompositionAnalyzer

- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  v37[1] = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  v9 = cancelCopy;
  if (cancelCopy && ((*(cancelCopy + 2))(cancelCopy) & 1) != 0)
  {
    v10 = -128;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v31 = 0;
    v12 = [[VCPVanishingPointDetector alloc] initWithImage:buffer];
    v30 = 0;
    v10 = [(VCPVanishingPointDetector *)v12 detect:&v32 withConfidence:&v31 dominantLine:&v30];
    v13 = v30;
    v14 = v13;
    if (!v10)
    {
      v15 = 1.0 - (v32.y - v32.x * 0.0);
      v32.x = v32.x + v32.y * 0.0 + 0.0;
      v32.y = v15;
      v16 = [v13 objectForKey:@"Point0"];
      v17 = NSPointFromString(v16);

      v18 = [v14 objectForKey:@"Point1"];
      v19 = NSPointFromString(v18);

      v38.x = v17.x + v17.y * 0.0 + 0.0;
      v38.y = 1.0 - (v17.y - v17.x * 0.0);
      v20 = MEMORY[0x1E695DEC8];
      v21 = NSStringFromPoint(v38);
      v39.y = 1.0 - (v19.y - v19.x * 0.0);
      v39.x = v19.x + v19.y * 0.0 + 0.0;
      v22 = NSStringFromPoint(v39);
      v23 = [v20 arrayWithObjects:{v21, v22, 0}];

      v24 = NSStringFromPoint(v32);
      [dictionary setObject:v24 forKey:@"vanishingPoint"];

      LODWORD(v25) = v31;
      v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
      [dictionary setObject:v26 forKey:@"vanishingPointConfidence"];

      [dictionary setObject:v23 forKey:@"dominantLine"];
      v36 = @"CompositionResults";
      v33 = @"attributes";
      v34 = dictionary;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v35 = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      v37[0] = v28;
      *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    }
  }

  return v10;
}

@end
@interface ICASDrawingRecognitionData
- (ICASDrawingRecognitionData)initWithCountOfPencilStrokes:(id)strokes countOfFingerStrokes:(id)fingerStrokes countOfRecognizedHandwrittenCharacters:(id)characters countOfRecognizedLines:(id)lines handwritingLanguage:(id)language drawingID:(id)d;
- (id)toDict;
@end

@implementation ICASDrawingRecognitionData

- (ICASDrawingRecognitionData)initWithCountOfPencilStrokes:(id)strokes countOfFingerStrokes:(id)fingerStrokes countOfRecognizedHandwrittenCharacters:(id)characters countOfRecognizedLines:(id)lines handwritingLanguage:(id)language drawingID:(id)d
{
  strokesCopy = strokes;
  fingerStrokesCopy = fingerStrokes;
  charactersCopy = characters;
  linesCopy = lines;
  languageCopy = language;
  dCopy = d;
  v24.receiver = self;
  v24.super_class = ICASDrawingRecognitionData;
  v18 = [(ICASDrawingRecognitionData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_countOfPencilStrokes, strokes);
    objc_storeStrong(&v19->_countOfFingerStrokes, fingerStrokes);
    objc_storeStrong(&v19->_countOfRecognizedHandwrittenCharacters, characters);
    objc_storeStrong(&v19->_countOfRecognizedLines, lines);
    objc_storeStrong(&v19->_handwritingLanguage, language);
    objc_storeStrong(&v19->_drawingID, d);
  }

  return v19;
}

- (id)toDict
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = @"countOfPencilStrokes";
  countOfPencilStrokes = [(ICASDrawingRecognitionData *)self countOfPencilStrokes];
  if (countOfPencilStrokes)
  {
    countOfPencilStrokes2 = [(ICASDrawingRecognitionData *)self countOfPencilStrokes];
  }

  else
  {
    countOfPencilStrokes2 = objc_opt_new();
  }

  v23 = countOfPencilStrokes2;
  v26[0] = countOfPencilStrokes2;
  v25[1] = @"countOfFingerStrokes";
  countOfFingerStrokes = [(ICASDrawingRecognitionData *)self countOfFingerStrokes];
  if (countOfFingerStrokes)
  {
    countOfFingerStrokes2 = [(ICASDrawingRecognitionData *)self countOfFingerStrokes];
  }

  else
  {
    countOfFingerStrokes2 = objc_opt_new();
  }

  v5 = countOfFingerStrokes2;
  v26[1] = countOfFingerStrokes2;
  v25[2] = @"countOfRecognizedHandwrittenCharacters";
  countOfRecognizedHandwrittenCharacters = [(ICASDrawingRecognitionData *)self countOfRecognizedHandwrittenCharacters];
  if (countOfRecognizedHandwrittenCharacters)
  {
    countOfRecognizedHandwrittenCharacters2 = [(ICASDrawingRecognitionData *)self countOfRecognizedHandwrittenCharacters];
  }

  else
  {
    countOfRecognizedHandwrittenCharacters2 = objc_opt_new();
  }

  v8 = countOfRecognizedHandwrittenCharacters2;
  v26[2] = countOfRecognizedHandwrittenCharacters2;
  v25[3] = @"countOfRecognizedLines";
  countOfRecognizedLines = [(ICASDrawingRecognitionData *)self countOfRecognizedLines];
  if (countOfRecognizedLines)
  {
    countOfRecognizedLines2 = [(ICASDrawingRecognitionData *)self countOfRecognizedLines];
  }

  else
  {
    countOfRecognizedLines2 = objc_opt_new();
  }

  v11 = countOfRecognizedLines2;
  v26[3] = countOfRecognizedLines2;
  v25[4] = @"handwritingLanguage";
  handwritingLanguage = [(ICASDrawingRecognitionData *)self handwritingLanguage];
  if (handwritingLanguage)
  {
    handwritingLanguage2 = [(ICASDrawingRecognitionData *)self handwritingLanguage];
  }

  else
  {
    handwritingLanguage2 = objc_opt_new();
  }

  v14 = handwritingLanguage2;
  v26[4] = handwritingLanguage2;
  v25[5] = @"drawingID";
  drawingID = [(ICASDrawingRecognitionData *)self drawingID];
  if (drawingID)
  {
    drawingID2 = [(ICASDrawingRecognitionData *)self drawingID];
  }

  else
  {
    drawingID2 = objc_opt_new();
  }

  v17 = drawingID2;
  v26[5] = drawingID2;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end
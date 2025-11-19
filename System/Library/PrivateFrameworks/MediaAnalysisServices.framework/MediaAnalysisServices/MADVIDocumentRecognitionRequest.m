@interface MADVIDocumentRecognitionRequest
- (MADVIDocumentRecognitionRequest)initWithCoder:(id)a3;
- (MADVIDocumentRecognitionRequest)initWithLanguages:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIDocumentRecognitionRequest

- (MADVIDocumentRecognitionRequest)initWithLanguages:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADVIDocumentRecognitionRequest;
  v5 = [(MADVIDocumentRecognitionRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    languages = v5->_languages;
    v5->_languages = v6;

    v5->_maximumCandidateCount = 3;
    v5->_usesLanguageDetection = 1;
    v5->_usesLanguageCorrection = 1;
    v5->_usesFormFieldDetection = 0;
    v5->_recognitionLevel = 0;
    v5->_minimumTextHeight = 0.0;
  }

  return v5;
}

- (MADVIDocumentRecognitionRequest)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MADVIDocumentRecognitionRequest;
  v5 = [(MADRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Languages"];
    languages = v5->_languages;
    v5->_languages = v9;

    v5->_maximumCandidateCount = [v4 decodeIntegerForKey:@"MaximumCandidateCount"];
    v5->_usesLanguageDetection = [v4 decodeBoolForKey:@"UsesLanguageDetection"];
    v5->_usesLanguageCorrection = [v4 decodeBoolForKey:@"UsesLanguageCorrection"];
    v5->_usesFormFieldDetection = [v4 decodeBoolForKey:@"UsesFormFieldDetection"];
    v5->_recognitionLevel = [v4 decodeIntegerForKey:@"RecognitionLevel"];
    [v4 decodeFloatForKey:@"MinimumTextHeight"];
    v5->_minimumTextHeight = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MADVIDocumentRecognitionRequest;
  v4 = a3;
  [(MADRequest *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_languages forKey:{@"Languages", v6.receiver, v6.super_class}];
  [v4 encodeInteger:self->_maximumCandidateCount forKey:@"MaximumCandidateCount"];
  [v4 encodeBool:self->_usesLanguageDetection forKey:@"UsesLanguageDetection"];
  [v4 encodeBool:self->_usesLanguageCorrection forKey:@"UsesLanguageCorrection"];
  [v4 encodeBool:self->_usesFormFieldDetection forKey:@"UsesFormFieldDetection"];
  [v4 encodeInteger:self->_recognitionLevel forKey:@"RecognitionLevel"];
  *&v5 = self->_minimumTextHeight;
  [v4 encodeFloat:@"MinimumTextHeight" forKey:v5];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"languages: %@, ", self->_languages];
  [v3 appendFormat:@"maximumCandidateCount: %lu, ", self->_maximumCandidateCount];
  [v3 appendFormat:@"usesLanguageDetection: %d, ", self->_usesLanguageDetection];
  [v3 appendFormat:@"usesLanguageCorrection: %d, ", self->_usesLanguageCorrection];
  [v3 appendFormat:@"usesFormFieldDetection: %d, ", self->_usesFormFieldDetection];
  [v3 appendFormat:@"recognitionLevel: %ld, ", self->_recognitionLevel];
  [v3 appendFormat:@"minimumTextHeight: %f, ", self->_minimumTextHeight];
  v6 = [(MADRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

@end
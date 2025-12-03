@interface MADVIDocumentRecognitionRequest
- (MADVIDocumentRecognitionRequest)initWithCoder:(id)coder;
- (MADVIDocumentRecognitionRequest)initWithLanguages:(id)languages;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIDocumentRecognitionRequest

- (MADVIDocumentRecognitionRequest)initWithLanguages:(id)languages
{
  languagesCopy = languages;
  v9.receiver = self;
  v9.super_class = MADVIDocumentRecognitionRequest;
  v5 = [(MADVIDocumentRecognitionRequest *)&v9 init];
  if (v5)
  {
    v6 = [languagesCopy copy];
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

- (MADVIDocumentRecognitionRequest)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MADVIDocumentRecognitionRequest;
  v5 = [(MADRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Languages"];
    languages = v5->_languages;
    v5->_languages = v9;

    v5->_maximumCandidateCount = [coderCopy decodeIntegerForKey:@"MaximumCandidateCount"];
    v5->_usesLanguageDetection = [coderCopy decodeBoolForKey:@"UsesLanguageDetection"];
    v5->_usesLanguageCorrection = [coderCopy decodeBoolForKey:@"UsesLanguageCorrection"];
    v5->_usesFormFieldDetection = [coderCopy decodeBoolForKey:@"UsesFormFieldDetection"];
    v5->_recognitionLevel = [coderCopy decodeIntegerForKey:@"RecognitionLevel"];
    [coderCopy decodeFloatForKey:@"MinimumTextHeight"];
    v5->_minimumTextHeight = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MADVIDocumentRecognitionRequest;
  coderCopy = coder;
  [(MADRequest *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_languages forKey:{@"Languages", v6.receiver, v6.super_class}];
  [coderCopy encodeInteger:self->_maximumCandidateCount forKey:@"MaximumCandidateCount"];
  [coderCopy encodeBool:self->_usesLanguageDetection forKey:@"UsesLanguageDetection"];
  [coderCopy encodeBool:self->_usesLanguageCorrection forKey:@"UsesLanguageCorrection"];
  [coderCopy encodeBool:self->_usesFormFieldDetection forKey:@"UsesFormFieldDetection"];
  [coderCopy encodeInteger:self->_recognitionLevel forKey:@"RecognitionLevel"];
  *&v5 = self->_minimumTextHeight;
  [coderCopy encodeFloat:@"MinimumTextHeight" forKey:v5];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"languages: %@, ", self->_languages];
  [string appendFormat:@"maximumCandidateCount: %lu, ", self->_maximumCandidateCount];
  [string appendFormat:@"usesLanguageDetection: %d, ", self->_usesLanguageDetection];
  [string appendFormat:@"usesLanguageCorrection: %d, ", self->_usesLanguageCorrection];
  [string appendFormat:@"usesFormFieldDetection: %d, ", self->_usesFormFieldDetection];
  [string appendFormat:@"recognitionLevel: %ld, ", self->_recognitionLevel];
  [string appendFormat:@"minimumTextHeight: %f, ", self->_minimumTextHeight];
  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end
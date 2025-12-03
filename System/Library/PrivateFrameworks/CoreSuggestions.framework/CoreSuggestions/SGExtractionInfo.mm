@interface SGExtractionInfo
+ (SGExtractionInfo)extractionInfoWithExtractionType:(unint64_t)type modelVersion:(id)version confidence:(id)confidence;
- (SGExtractionInfo)initWithCoder:(id)coder;
- (SGExtractionInfo)initWithExtractionType:(unint64_t)type modelVersion:(id)version confidence:(id)confidence;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGExtractionInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  extractionType = [(SGExtractionInfo *)self extractionType];
  modelVersion = [(SGExtractionInfo *)self modelVersion];
  confidence = [(SGExtractionInfo *)self confidence];
  v8 = [v4 initWithExtractionType:extractionType modelVersion:modelVersion confidence:confidence];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  extractionType = self->_extractionType;
  coderCopy = coder;
  [coderCopy encodeInt64:extractionType forKey:@"extractionType"];
  [coderCopy encodeObject:self->_modelVersion forKey:@"modelVersion"];
  [coderCopy encodeObject:self->_confidence forKey:@"confidence"];
}

- (SGExtractionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SGExtractionInfo;
  v5 = [(SGExtractionInfo *)&v15 init];
  if (v5)
  {
    v5->_extractionType = [coderCopy decodeInt64ForKey:@"extractionType"];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"modelVersion"];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F38742F8;
    }

    modelVersion = v5->_modelVersion;
    v5->_modelVersion = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"confidence"];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = &unk_1F38744F8;
    }

    confidence = v5->_confidence;
    v5->_confidence = v12;
  }

  return v5;
}

- (SGExtractionInfo)initWithExtractionType:(unint64_t)type modelVersion:(id)version confidence:(id)confidence
{
  versionCopy = version;
  confidenceCopy = confidence;
  v22.receiver = self;
  v22.super_class = SGExtractionInfo;
  v11 = [(SGExtractionInfo *)&v22 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  v11->_extractionType = type;
  [confidenceCopy floatValue];
  if (v13 < 0.0 || ([confidenceCopy floatValue], v14 > 1.0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v12 file:@"SGExtractionInfo.m" lineNumber:29 description:@"Extraction confidence must be between 0 and 1"];

    if (versionCopy)
    {
      goto LABEL_5;
    }

LABEL_7:
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    goto LABEL_8;
  }

  if (!versionCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  v15 = versionCopy;
LABEL_8:
  modelVersion = v12->_modelVersion;
  v12->_modelVersion = v15;

  if (confidenceCopy)
  {
    v19 = confidenceCopy;
  }

  else
  {
    LODWORD(v18) = 0.5;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  }

  confidence = v12->_confidence;
  v12->_confidence = v19;

LABEL_12:
  return v12;
}

+ (SGExtractionInfo)extractionInfoWithExtractionType:(unint64_t)type modelVersion:(id)version confidence:(id)confidence
{
  confidenceCopy = confidence;
  versionCopy = version;
  v10 = [[self alloc] initWithExtractionType:type modelVersion:versionCopy confidence:confidenceCopy];

  return v10;
}

@end
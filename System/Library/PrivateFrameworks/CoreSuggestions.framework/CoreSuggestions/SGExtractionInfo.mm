@interface SGExtractionInfo
+ (SGExtractionInfo)extractionInfoWithExtractionType:(unint64_t)a3 modelVersion:(id)a4 confidence:(id)a5;
- (SGExtractionInfo)initWithCoder:(id)a3;
- (SGExtractionInfo)initWithExtractionType:(unint64_t)a3 modelVersion:(id)a4 confidence:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGExtractionInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(SGExtractionInfo *)self extractionType];
  v6 = [(SGExtractionInfo *)self modelVersion];
  v7 = [(SGExtractionInfo *)self confidence];
  v8 = [v4 initWithExtractionType:v5 modelVersion:v6 confidence:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  extractionType = self->_extractionType;
  v5 = a3;
  [v5 encodeInt64:extractionType forKey:@"extractionType"];
  [v5 encodeObject:self->_modelVersion forKey:@"modelVersion"];
  [v5 encodeObject:self->_confidence forKey:@"confidence"];
}

- (SGExtractionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SGExtractionInfo;
  v5 = [(SGExtractionInfo *)&v15 init];
  if (v5)
  {
    v5->_extractionType = [v4 decodeInt64ForKey:@"extractionType"];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"modelVersion"];

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
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"confidence"];

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

- (SGExtractionInfo)initWithExtractionType:(unint64_t)a3 modelVersion:(id)a4 confidence:(id)a5
{
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = SGExtractionInfo;
  v11 = [(SGExtractionInfo *)&v22 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  v11->_extractionType = a3;
  [v10 floatValue];
  if (v13 < 0.0 || ([v10 floatValue], v14 > 1.0))
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:v12 file:@"SGExtractionInfo.m" lineNumber:29 description:@"Extraction confidence must be between 0 and 1"];

    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    goto LABEL_8;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v15 = v9;
LABEL_8:
  modelVersion = v12->_modelVersion;
  v12->_modelVersion = v15;

  if (v10)
  {
    v19 = v10;
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

+ (SGExtractionInfo)extractionInfoWithExtractionType:(unint64_t)a3 modelVersion:(id)a4 confidence:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithExtractionType:a3 modelVersion:v9 confidence:v8];

  return v10;
}

@end
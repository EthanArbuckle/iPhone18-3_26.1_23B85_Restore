@interface DUPersonalIDDocument
- (DUPersonalIDDocument)initWithCoder:(id)coder;
- (DUPersonalIDDocument)initWithOCRContents:(id)contents documentType:(int64_t)type;
- (DUPersonalIDDocument)initWithText:(id)text documentType:(int64_t)type;
- (DUPersonalIDDocument)initWithTextLines:(id)lines boundingBoxes:(id)boxes confidenceScores:(id)scores documentType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DUPersonalIDDocument

- (DUPersonalIDDocument)initWithCoder:(id)coder
{
  v43 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"documentType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lines"];
  v37 = 0;
  v7 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v6 error:&v37];
  v8 = v37;
  error = v8;
  if (v8 || !v7)
  {
    if (!v8)
    {
      error = [v7 error];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = error;
      _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[DUInformationExtractor] failed to decode DUPersonalIDDocument: %@", buf, 0xCu);
    }

    selfCopy2 = 0;
  }

  else
  {
    v31 = v5;
    v33 = v6;
    selfCopy = self;
    v10 = objc_alloc(MEMORY[0x277CBEB98]);
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v12 = [v10 initWithArray:v11];

    v13 = *MEMORY[0x277CCA308];
    v32 = [v7 decodeObjectOfClasses:v12 forKey:*MEMORY[0x277CCA308]];
    [v7 finishDecoding];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"boundingBoxes"];
    v36 = 0;
    v15 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v14 error:&v36];
    error = v36;

    if (error || !v15)
    {
      if (!error)
      {
        error = [v15 error];
      }

      v24 = v32;
      v6 = v33;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = error;
        _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[DUInformationExtractor] failed to decode DUPersonalIDDocument: %@", buf, 0xCu);
      }

      selfCopy2 = 0;
      v7 = v15;
      self = selfCopy;
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x277CBEB98]);
      v39[0] = objc_opt_class();
      v39[1] = objc_opt_class();
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
      v18 = [v16 initWithArray:v17];

      v30 = [v15 decodeObjectOfClasses:v18 forKey:v13];
      [v15 finishDecoding];
      v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidenceScores"];
      v35 = 0;
      v7 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v19 error:&v35];
      error = v35;

      if (error || !v7)
      {
        v24 = v32;
        if (!error)
        {
          error = [v7 error];
        }

        self = selfCopy;
        v26 = v30;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = error;
          _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[DUInformationExtractor] failed to decode DUPersonalIDDocument: %@", buf, 0xCu);
        }

        selfCopy2 = 0;
      }

      else
      {
        v20 = objc_alloc(MEMORY[0x277CBEB98]);
        v38[0] = objc_opt_class();
        v38[1] = objc_opt_class();
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
        v22 = [v20 initWithArray:v21];

        v23 = [v7 decodeObjectOfClasses:v22 forKey:v13];
        [v7 finishDecoding];
        v24 = v32;
        v25 = [(DUPersonalIDDocument *)selfCopy initWithTextLines:v32 boundingBoxes:v30 confidenceScores:v23 documentType:v31];

        error = 0;
        v18 = v22;
        self = v25;
        v26 = v30;
        selfCopy2 = self;
      }

      v12 = v18;
      v6 = v33;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  v21 = *MEMORY[0x277D85DE8];
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"documentType"];
  lines = self->_lines;
  v18 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:lines requiringSecureCoding:1 error:&v18];
  v8 = v18;
  boundingBoxes = self->_boundingBoxes;
  v17 = v8;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:boundingBoxes requiringSecureCoding:1 error:&v17];
  v11 = v17;

  confidenceScores = self->_confidenceScores;
  v16 = v11;
  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:confidenceScores requiringSecureCoding:1 error:&v16];
  v14 = v16;

  if (v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v14;
    _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[DUInformationExtractor] failed to decode DUPersonalIDDocument: %@", buf, 0xCu);
  }

  [coderCopy encodeObject:v7 forKey:@"lines"];
  [coderCopy encodeObject:v10 forKey:@"boundingBoxes"];
  [coderCopy encodeObject:v13 forKey:@"confidenceScores"];

  v15 = *MEMORY[0x277D85DE8];
}

- (DUPersonalIDDocument)initWithText:(id)text documentType:(int64_t)type
{
  v6 = [text componentsSeparatedByString:@"\n"];
  v7 = [(DUPersonalIDDocument *)self initWithTextLines:v6 boundingBoxes:MEMORY[0x277CBEBF8] confidenceScores:MEMORY[0x277CBEBF8] documentType:type];

  return v7;
}

- (DUPersonalIDDocument)initWithOCRContents:(id)contents documentType:(int64_t)type
{
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v9 = [(DUPersonalIDDocument *)self initWithTextLines:array boundingBoxes:array2 confidenceScores:array3 documentType:type];

  return v9;
}

- (DUPersonalIDDocument)initWithTextLines:(id)lines boundingBoxes:(id)boxes confidenceScores:(id)scores documentType:(int64_t)type
{
  linesCopy = lines;
  boxesCopy = boxes;
  scoresCopy = scores;
  v17.receiver = self;
  v17.super_class = DUPersonalIDDocument;
  v14 = [(DUPersonalIDDocument *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_lines, lines);
    objc_storeStrong(&v15->_boundingBoxes, boxes);
    objc_storeStrong(&v15->_confidenceScores, scores);
  }

  return v15;
}

@end
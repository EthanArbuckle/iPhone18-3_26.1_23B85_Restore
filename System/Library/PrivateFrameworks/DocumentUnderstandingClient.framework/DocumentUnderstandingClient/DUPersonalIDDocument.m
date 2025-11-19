@interface DUPersonalIDDocument
- (DUPersonalIDDocument)initWithCoder:(id)a3;
- (DUPersonalIDDocument)initWithOCRContents:(id)a3 documentType:(int64_t)a4;
- (DUPersonalIDDocument)initWithText:(id)a3 documentType:(int64_t)a4;
- (DUPersonalIDDocument)initWithTextLines:(id)a3 boundingBoxes:(id)a4 confidenceScores:(id)a5 documentType:(int64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DUPersonalIDDocument

- (DUPersonalIDDocument)initWithCoder:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"documentType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lines"];
  v37 = 0;
  v7 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v6 error:&v37];
  v8 = v37;
  v9 = v8;
  if (v8 || !v7)
  {
    if (!v8)
    {
      v9 = [v7 error];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v9;
      _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[DUInformationExtractor] failed to decode DUPersonalIDDocument: %@", buf, 0xCu);
    }

    v27 = 0;
  }

  else
  {
    v31 = v5;
    v33 = v6;
    v34 = self;
    v10 = objc_alloc(MEMORY[0x277CBEB98]);
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v12 = [v10 initWithArray:v11];

    v13 = *MEMORY[0x277CCA308];
    v32 = [v7 decodeObjectOfClasses:v12 forKey:*MEMORY[0x277CCA308]];
    [v7 finishDecoding];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boundingBoxes"];
    v36 = 0;
    v15 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v14 error:&v36];
    v9 = v36;

    if (v9 || !v15)
    {
      if (!v9)
      {
        v9 = [v15 error];
      }

      v24 = v32;
      v6 = v33;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v9;
        _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[DUInformationExtractor] failed to decode DUPersonalIDDocument: %@", buf, 0xCu);
      }

      v27 = 0;
      v7 = v15;
      self = v34;
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
      v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confidenceScores"];
      v35 = 0;
      v7 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v19 error:&v35];
      v9 = v35;

      if (v9 || !v7)
      {
        v24 = v32;
        if (!v9)
        {
          v9 = [v7 error];
        }

        self = v34;
        v26 = v30;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = v9;
          _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[DUInformationExtractor] failed to decode DUPersonalIDDocument: %@", buf, 0xCu);
        }

        v27 = 0;
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
        v25 = [(DUPersonalIDDocument *)v34 initWithTextLines:v32 boundingBoxes:v30 confidenceScores:v23 documentType:v31];

        v9 = 0;
        v18 = v22;
        self = v25;
        v26 = v30;
        v27 = self;
      }

      v12 = v18;
      v6 = v33;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"documentType"];
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

  [v5 encodeObject:v7 forKey:@"lines"];
  [v5 encodeObject:v10 forKey:@"boundingBoxes"];
  [v5 encodeObject:v13 forKey:@"confidenceScores"];

  v15 = *MEMORY[0x277D85DE8];
}

- (DUPersonalIDDocument)initWithText:(id)a3 documentType:(int64_t)a4
{
  v6 = [a3 componentsSeparatedByString:@"\n"];
  v7 = [(DUPersonalIDDocument *)self initWithTextLines:v6 boundingBoxes:MEMORY[0x277CBEBF8] confidenceScores:MEMORY[0x277CBEBF8] documentType:a4];

  return v7;
}

- (DUPersonalIDDocument)initWithOCRContents:(id)a3 documentType:(int64_t)a4
{
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(DUPersonalIDDocument *)self initWithTextLines:v6 boundingBoxes:v7 confidenceScores:v8 documentType:a4];

  return v9;
}

- (DUPersonalIDDocument)initWithTextLines:(id)a3 boundingBoxes:(id)a4 confidenceScores:(id)a5 documentType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = DUPersonalIDDocument;
  v14 = [(DUPersonalIDDocument *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a6;
    objc_storeStrong(&v14->_lines, a3);
    objc_storeStrong(&v15->_boundingBoxes, a4);
    objc_storeStrong(&v15->_confidenceScores, a5);
  }

  return v15;
}

@end
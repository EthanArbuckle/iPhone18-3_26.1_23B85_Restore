@interface MRTranscriptAlignment
- (MRTranscriptAlignment)initWithCoder:(id)a3;
- (MRTranscriptAlignment)initWithPlayerStartTime:(double)a3 playerEndTime:(double)a4 referenceStartTime:(double)a5 referenceEndTime:(double)a6 matchedBeginning:(BOOL)a7 matchedEnd:(BOOL)a8;
- (MRTranscriptAlignment)initWithProtobuf:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (_MRTranscriptAlignmentProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)data;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRTranscriptAlignment

- (MRTranscriptAlignment)initWithPlayerStartTime:(double)a3 playerEndTime:(double)a4 referenceStartTime:(double)a5 referenceEndTime:(double)a6 matchedBeginning:(BOOL)a7 matchedEnd:(BOOL)a8
{
  v15.receiver = self;
  v15.super_class = MRTranscriptAlignment;
  result = [(MRTranscriptAlignment *)&v15 init];
  if (result)
  {
    result->_playerStartTime = a3;
    result->_playerEndTime = a4;
    result->_referenceStartTime = a5;
    result->_referenceEndTime = a6;
    result->_matchedBeginning = a7;
    result->_matchedEnd = a8;
  }

  return result;
}

- (MRTranscriptAlignment)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = MRTranscriptAlignment;
    v5 = [(MRTranscriptAlignment *)&v12 init];
    if (v5)
    {
      [v4 playerStartTime];
      v5->_playerStartTime = v6;
      [v4 playerEndTime];
      v5->_playerEndTime = v7;
      [v4 referenceStartTime];
      v5->_referenceStartTime = v8;
      [v4 referenceEndTime];
      v5->_referenceEndTime = v9;
      v5->_matchedBeginning = [v4 matchedBeginning];
      v5->_matchedEnd = [v4 matchedEnd];
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_MRTranscriptAlignmentProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRTranscriptAlignmentProtobuf);
  [(MRTranscriptAlignment *)self playerStartTime];
  [(_MRTranscriptAlignmentProtobuf *)v3 setPlayerStartTime:?];
  [(MRTranscriptAlignment *)self playerEndTime];
  [(_MRTranscriptAlignmentProtobuf *)v3 setPlayerEndTime:?];
  [(MRTranscriptAlignment *)self referenceStartTime];
  [(_MRTranscriptAlignmentProtobuf *)v3 setReferenceStartTime:?];
  [(MRTranscriptAlignment *)self referenceEndTime];
  [(_MRTranscriptAlignmentProtobuf *)v3 setReferenceEndTime:?];
  [(_MRTranscriptAlignmentProtobuf *)v3 setMatchedBeginning:[(MRTranscriptAlignment *)self matchedBeginning]];
  [(_MRTranscriptAlignmentProtobuf *)v3 setMatchedEnd:[(MRTranscriptAlignment *)self matchedEnd]];

  return v3;
}

- (id)data
{
  v2 = [(MRTranscriptAlignment *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v17[6] = *MEMORY[0x1E69E9840];
  v16[0] = @"playerStartTime";
  v3 = MEMORY[0x1E696AD98];
  [(MRTranscriptAlignment *)self playerStartTime];
  v4 = [v3 numberWithDouble:?];
  v17[0] = v4;
  v16[1] = @"playerEndTime";
  v5 = MEMORY[0x1E696AD98];
  [(MRTranscriptAlignment *)self playerEndTime];
  v6 = [v5 numberWithDouble:?];
  v17[1] = v6;
  v16[2] = @"referenceStartTime";
  v7 = MEMORY[0x1E696AD98];
  [(MRTranscriptAlignment *)self referenceStartTime];
  v8 = [v7 numberWithDouble:?];
  v17[2] = v8;
  v16[3] = @"referenceEndTime";
  v9 = MEMORY[0x1E696AD98];
  [(MRTranscriptAlignment *)self referenceEndTime];
  v10 = [v9 numberWithDouble:?];
  v17[3] = v10;
  v16[4] = @"matchedBeginning";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRTranscriptAlignment matchedBeginning](self, "matchedBeginning")}];
  v17[4] = v11;
  v16[5] = @"matchedEnd";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRTranscriptAlignment matchedEnd](self, "matchedEnd")}];
  v17[5] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(MRTranscriptAlignment *)self playerStartTime];
  [v4 setPlayerStartTime:?];
  [(MRTranscriptAlignment *)self playerEndTime];
  [v4 setPlayerEndTime:?];
  [(MRTranscriptAlignment *)self referenceStartTime];
  [v4 setReferenceStartTime:?];
  [(MRTranscriptAlignment *)self referenceEndTime];
  [v4 setReferenceEndTime:?];
  [v4 setMatchedBeginning:{-[MRTranscriptAlignment matchedBeginning](self, "matchedBeginning")}];
  [v4 setMatchedEnd:{-[MRTranscriptAlignment matchedEnd](self, "matchedEnd")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if ([v5 allowsKeyedCoding])
  {
    [(MRTranscriptAlignment *)self playerStartTime];
    [v5 encodeDouble:@"playerStartTime" forKey:?];
    [(MRTranscriptAlignment *)self playerEndTime];
    [v5 encodeDouble:@"playerEndTime" forKey:?];
    [(MRTranscriptAlignment *)self referenceStartTime];
    [v5 encodeDouble:@"referenceStartTime" forKey:?];
    [(MRTranscriptAlignment *)self referenceEndTime];
    [v5 encodeDouble:@"referenceEndTime" forKey:?];
    [v5 encodeBool:-[MRTranscriptAlignment matchedBeginning](self forKey:{"matchedBeginning"), @"matchedBeginning"}];
    [v5 encodeBool:-[MRTranscriptAlignment matchedEnd](self forKey:{"matchedEnd"), @"matchedEnd"}];
    v4 = [(MRTranscriptAlignment *)self protobuf];
    [v5 encodeObject:v4 forKey:@"protobuf"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"coder must support key-value coding"];
  }
}

- (MRTranscriptAlignment)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MRTranscriptAlignment;
  v5 = [(MRTranscriptAlignment *)&v11 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  if (![v4 allowsKeyedCoding])
  {
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:38];
    [v4 failWithError:v8];

LABEL_11:
    v7 = v5;
    goto LABEL_12;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MRLanguageOption *)v6 initWithCoder:v9];
    }

    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_10:
    [v4 decodeDoubleForKey:@"playerStartTime"];
    [(MRTranscriptAlignment *)v5 setPlayerStartTime:?];
    [v4 decodeDoubleForKey:@"playerEndTime"];
    [(MRTranscriptAlignment *)v5 setPlayerEndTime:?];
    [v4 decodeDoubleForKey:@"referenceStartTime"];
    [(MRTranscriptAlignment *)v5 setReferenceStartTime:?];
    [v4 decodeDoubleForKey:@"referenceEndTime"];
    [(MRTranscriptAlignment *)v5 setReferenceEndTime:?];
    -[MRTranscriptAlignment setMatchedBeginning:](v5, "setMatchedBeginning:", [v4 decodeBoolForKey:@"matchedBeginning"]);
    -[MRTranscriptAlignment setMatchedEnd:](v5, "setMatchedEnd:", [v4 decodeBoolForKey:@"matchedEnd"]);
    goto LABEL_11;
  }

  v7 = [(MRTranscriptAlignment *)v5 initWithProtobuf:v6];

LABEL_12:
  return v7;
}

@end
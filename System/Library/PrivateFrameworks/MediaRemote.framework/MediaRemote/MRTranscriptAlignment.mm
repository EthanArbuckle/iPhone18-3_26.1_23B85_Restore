@interface MRTranscriptAlignment
- (MRTranscriptAlignment)initWithCoder:(id)coder;
- (MRTranscriptAlignment)initWithPlayerStartTime:(double)time playerEndTime:(double)endTime referenceStartTime:(double)startTime referenceEndTime:(double)referenceEndTime matchedBeginning:(BOOL)beginning matchedEnd:(BOOL)end;
- (MRTranscriptAlignment)initWithProtobuf:(id)protobuf;
- (NSDictionary)dictionaryRepresentation;
- (_MRTranscriptAlignmentProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRTranscriptAlignment

- (MRTranscriptAlignment)initWithPlayerStartTime:(double)time playerEndTime:(double)endTime referenceStartTime:(double)startTime referenceEndTime:(double)referenceEndTime matchedBeginning:(BOOL)beginning matchedEnd:(BOOL)end
{
  v15.receiver = self;
  v15.super_class = MRTranscriptAlignment;
  result = [(MRTranscriptAlignment *)&v15 init];
  if (result)
  {
    result->_playerStartTime = time;
    result->_playerEndTime = endTime;
    result->_referenceStartTime = startTime;
    result->_referenceEndTime = referenceEndTime;
    result->_matchedBeginning = beginning;
    result->_matchedEnd = end;
  }

  return result;
}

- (MRTranscriptAlignment)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v12.receiver = self;
    v12.super_class = MRTranscriptAlignment;
    v5 = [(MRTranscriptAlignment *)&v12 init];
    if (v5)
    {
      [protobufCopy playerStartTime];
      v5->_playerStartTime = v6;
      [protobufCopy playerEndTime];
      v5->_playerEndTime = v7;
      [protobufCopy referenceStartTime];
      v5->_referenceStartTime = v8;
      [protobufCopy referenceEndTime];
      v5->_referenceEndTime = v9;
      v5->_matchedBeginning = [protobufCopy matchedBeginning];
      v5->_matchedEnd = [protobufCopy matchedEnd];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  protobuf = [(MRTranscriptAlignment *)self protobuf];
  data = [protobuf data];

  return data;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    [(MRTranscriptAlignment *)self playerStartTime];
    [coderCopy encodeDouble:@"playerStartTime" forKey:?];
    [(MRTranscriptAlignment *)self playerEndTime];
    [coderCopy encodeDouble:@"playerEndTime" forKey:?];
    [(MRTranscriptAlignment *)self referenceStartTime];
    [coderCopy encodeDouble:@"referenceStartTime" forKey:?];
    [(MRTranscriptAlignment *)self referenceEndTime];
    [coderCopy encodeDouble:@"referenceEndTime" forKey:?];
    [coderCopy encodeBool:-[MRTranscriptAlignment matchedBeginning](self forKey:{"matchedBeginning"), @"matchedBeginning"}];
    [coderCopy encodeBool:-[MRTranscriptAlignment matchedEnd](self forKey:{"matchedEnd"), @"matchedEnd"}];
    protobuf = [(MRTranscriptAlignment *)self protobuf];
    [coderCopy encodeObject:protobuf forKey:@"protobuf"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"coder must support key-value coding"];
  }
}

- (MRTranscriptAlignment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MRTranscriptAlignment;
  v5 = [(MRTranscriptAlignment *)&v11 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  if (![coderCopy allowsKeyedCoding])
  {
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:38];
    [coderCopy failWithError:v8];

LABEL_11:
    v7 = v5;
    goto LABEL_12;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];
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
    [coderCopy decodeDoubleForKey:@"playerStartTime"];
    [(MRTranscriptAlignment *)v5 setPlayerStartTime:?];
    [coderCopy decodeDoubleForKey:@"playerEndTime"];
    [(MRTranscriptAlignment *)v5 setPlayerEndTime:?];
    [coderCopy decodeDoubleForKey:@"referenceStartTime"];
    [(MRTranscriptAlignment *)v5 setReferenceStartTime:?];
    [coderCopy decodeDoubleForKey:@"referenceEndTime"];
    [(MRTranscriptAlignment *)v5 setReferenceEndTime:?];
    -[MRTranscriptAlignment setMatchedBeginning:](v5, "setMatchedBeginning:", [coderCopy decodeBoolForKey:@"matchedBeginning"]);
    -[MRTranscriptAlignment setMatchedEnd:](v5, "setMatchedEnd:", [coderCopy decodeBoolForKey:@"matchedEnd"]);
    goto LABEL_11;
  }

  v7 = [(MRTranscriptAlignment *)v5 initWithProtobuf:v6];

LABEL_12:
  return v7;
}

@end
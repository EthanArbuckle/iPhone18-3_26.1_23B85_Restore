@interface IMMarkUnreadRequestPipelineParameter
- (IMMarkUnreadRequestPipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4;
- (id)description;
@end

@implementation IMMarkUnreadRequestPipelineParameter

- (IMMarkUnreadRequestPipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = IMMarkUnreadRequestPipelineParameter;
  v8 = [(IMMarkUnreadRequestPipelineParameter *)&v25 init];
  if (v8)
  {
    v9 = [v6 metadata];
    v10 = [v9 messageGUID];
    v11 = [v10 UUIDString];
    [(IMMarkUnreadRequestPipelineParameter *)v8 setGUID:v11];

    v12 = [v9 has_timestamp];
    v13 = MEMORY[0x277CCABB0];
    if (v12)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "timestamp")}];
      [(IMMarkUnreadRequestPipelineParameter *)v8 setTimestamp:v14];
    }

    else
    {
      v14 = [MEMORY[0x277CBEAA8] date];
      [v14 timeIntervalSince1970];
      v15 = [v13 numberWithDouble:?];
      [(IMMarkUnreadRequestPipelineParameter *)v8 setTimestamp:v15];
    }

    -[IMMarkUnreadRequestPipelineParameter setIsFromMe:](v8, "setIsFromMe:", [v7 isFromMe]);
    v16 = [v9 storageContext];
    -[IMMarkUnreadRequestPipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [v16 isFromStorage]);

    v17 = [v9 storageContext];
    -[IMMarkUnreadRequestPipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [v17 isLastFromStorage]);

    v18 = [v7 batchContext];
    batchContext = v8->_batchContext;
    v8->_batchContext = v18;

    v20 = [v7 fromIdentifier];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = v20;

    v22 = [v7 toIdentifier];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = v22;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMMarkUnreadRequestPipelineParameter *)self GUID];
  v5 = [(IMMarkUnreadRequestPipelineParameter *)self timestamp];
  v6 = [(IMMarkUnreadRequestPipelineParameter *)self messageItems];
  v7 = [v3 stringWithFormat:@"<IMMarkUnreadRequestPipelineParameter %p> { guid: %@, timestamp: %@, output messageItems: %lu}", self, v4, v5, objc_msgSend(v6, "count")];

  return v7;
}

@end
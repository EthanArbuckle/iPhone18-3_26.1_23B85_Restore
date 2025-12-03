@interface ASWBXMLToXMLConverter
- (id)initUsingMetadata:(BOOL)metadata;
- (uint64_t)_consumeBytes;
- (void)_consumeBytes;
- (void)_resetWBXMLParser;
- (void)handleBytesAvailable;
@end

@implementation ASWBXMLToXMLConverter

- (void)_resetWBXMLParser
{
  *&self->_wbxmlState = 0;
  [(NSMutableData *)self->_stringAccumulator setLength:0];
  self->_overflowLength = 0;
  [(NSMutableArray *)self->_codePageStack removeAllObjects];
  [(NSMutableArray *)self->_endTagStack removeAllObjects];
  self->_ppstate = 0;
}

- (void)_consumeBytes
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)handleBytesAvailable
{
  readFromInput = [(ASWBXMLToXMLConverter *)self readFromInput];
  if (readFromInput)
  {
    v4 = self->_bytesToConsumeCount + readFromInput;
    self->_bytesToConsumeCount = v4;
    self->_bytesToConsumeEnd = &self->_bytesToConsumeVector[v4];
    [(ASWBXMLToXMLConverter *)self _consumeBytes];
    bytesToConsumeCount = self->_bytesToConsumeCount;
    if (bytesToConsumeCount)
    {
      memmove(self->_buffer, self->_bytesToConsumeVector, bytesToConsumeCount);
    }

    self->_bytesToConsumeVector = self->_buffer;
  }
}

- (id)initUsingMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = ASWBXMLToXMLConverter;
  v4 = [(ASWBXMLToXMLConverter *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_useMetadata = metadataCopy;
    v4->_maxInlineStringLength = 250;
    v4->_bytesToConsumeVector = v4->_buffer;
    v4->_bytesToConsumeCount = 0;
    if (metadataCopy)
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }

    v4->_state = v6;
    v7 = objc_opt_new();
    endTagStack = v5->_endTagStack;
    v5->_endTagStack = v7;

    v9 = objc_opt_new();
    codePageStack = v5->_codePageStack;
    v5->_codePageStack = v9;

    v11 = objc_opt_new();
    stringAccumulator = v5->_stringAccumulator;
    v5->_stringAccumulator = v11;

    [(ASWBXMLToXMLConverter *)v5 _resetWBXMLParser];
  }

  return v5;
}

- (uint64_t)_consumeBytes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  *a3 = currentHandler;
  return [currentHandler handleFailureInMethod:self object:a2 file:@"WBXMLToXMLConversion.m" lineNumber:476 description:@"accounting check."];
}

@end
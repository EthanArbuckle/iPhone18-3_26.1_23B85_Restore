@interface MADVideoAnalysisPipelineNode
- (BOOL)processInput:(id)input outputs:(id *)outputs error:(id *)error;
- (MADVideoAnalysisPipelineNode)initWithQueue:(id)queue pipelineBlock:(id)block;
- (id)collectResultsWithError:(id *)error;
- (id)combineResults:(id)results withOtherResults:(id)otherResults;
@end

@implementation MADVideoAnalysisPipelineNode

- (MADVideoAnalysisPipelineNode)initWithQueue:(id)queue pipelineBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = MADVideoAnalysisPipelineNode;
  v7 = [(MADProcessingNode *)&v11 initWithQueue:queue];
  if (v7)
  {
    v8 = _Block_copy(blockCopy);
    pipelineBlock = v7->_pipelineBlock;
    v7->_pipelineBlock = v8;

    v7->_flags = 0;
  }

  return v7;
}

- (BOOL)processInput:(id)input outputs:(id *)outputs error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  currentFrame = [inputCopy currentFrame];
  [inputCopy nextSample];
  v10 = (*(self->_pipelineBlock + 2))();
  if (v10)
  {
    v11 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Pipeline block error"];
    v26[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:v13];
    v15 = *error;
    *error = v14;

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = _Block_copy(self->_pipelineBlock);
      *buf = 67109378;
      v22 = v10;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Status is %d when running pipeline block: %@", buf, 0x12u);
    }
  }

  else
  {
    self->_flags |= [currentFrame frameFlags];
    v20 = inputCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v18 = *outputs;
    *outputs = v17;
  }

  return v10 == 0;
}

- (id)collectResultsWithError:(id *)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = +[MADVideoAnalysisPipelineNode flagsKey];
  v8 = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_flags];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

- (id)combineResults:(id)results withOtherResults:(id)otherResults
{
  resultsCopy = results;
  otherResultsCopy = otherResults;
  v7 = [resultsCopy mutableCopy];
  [v7 addEntriesFromDictionary:otherResultsCopy];
  v8 = +[MADVideoAnalysisPipelineNode flagsKey];
  v9 = [resultsCopy objectForKeyedSubscript:v8];
  unsignedLongLongValue = [v9 unsignedLongLongValue];

  v11 = +[MADVideoAnalysisPipelineNode flagsKey];
  v12 = [otherResultsCopy objectForKeyedSubscript:v11];
  unsignedLongLongValue2 = [v12 unsignedLongLongValue];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue2 | unsignedLongLongValue];
  v15 = +[MADVideoAnalysisPipelineNode flagsKey];
  [v7 setObject:v14 forKeyedSubscript:v15];

  return v7;
}

@end
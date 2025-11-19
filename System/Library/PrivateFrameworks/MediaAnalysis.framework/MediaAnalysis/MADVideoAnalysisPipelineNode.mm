@interface MADVideoAnalysisPipelineNode
- (BOOL)processInput:(id)a3 outputs:(id *)a4 error:(id *)a5;
- (MADVideoAnalysisPipelineNode)initWithQueue:(id)a3 pipelineBlock:(id)a4;
- (id)collectResultsWithError:(id *)a3;
- (id)combineResults:(id)a3 withOtherResults:(id)a4;
@end

@implementation MADVideoAnalysisPipelineNode

- (MADVideoAnalysisPipelineNode)initWithQueue:(id)a3 pipelineBlock:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MADVideoAnalysisPipelineNode;
  v7 = [(MADProcessingNode *)&v11 initWithQueue:a3];
  if (v7)
  {
    v8 = _Block_copy(v6);
    pipelineBlock = v7->_pipelineBlock;
    v7->_pipelineBlock = v8;

    v7->_flags = 0;
  }

  return v7;
}

- (BOOL)processInput:(id)a3 outputs:(id *)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 currentFrame];
  [v8 nextSample];
  v10 = (*(self->_pipelineBlock + 2))();
  if (v10)
  {
    v11 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Pipeline block error"];
    v26[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:v13];
    v15 = *a5;
    *a5 = v14;

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
    self->_flags |= [v9 frameFlags];
    v20 = v8;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v18 = *a4;
    *a4 = v17;
  }

  return v10 == 0;
}

- (id)collectResultsWithError:(id *)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = +[MADVideoAnalysisPipelineNode flagsKey];
  v8 = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_flags];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

- (id)combineResults:(id)a3 withOtherResults:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 mutableCopy];
  [v7 addEntriesFromDictionary:v6];
  v8 = +[MADVideoAnalysisPipelineNode flagsKey];
  v9 = [v5 objectForKeyedSubscript:v8];
  v10 = [v9 unsignedLongLongValue];

  v11 = +[MADVideoAnalysisPipelineNode flagsKey];
  v12 = [v6 objectForKeyedSubscript:v11];
  v13 = [v12 unsignedLongLongValue];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13 | v10];
  v15 = +[MADVideoAnalysisPipelineNode flagsKey];
  [v7 setObject:v14 forKeyedSubscript:v15];

  return v7;
}

@end
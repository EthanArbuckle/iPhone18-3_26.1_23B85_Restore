@interface VCPVideoAnalyzer
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6;
- (int)finishAnalysisPass:(id *)a3;
@end

@implementation VCPVideoAnalyzer

- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6
{
  v9 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[VCPVideoAnalyzer analyzeFrame:withTimestamp:andDuration:flags:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unimplemented method %s", &v7, 0xCu);
  }

  return -4;
}

- (int)finishAnalysisPass:(id *)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[VCPVideoAnalyzer finishAnalysisPass:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unimplemented method %s", &v4, 0xCu);
  }

  return -4;
}

- (id)results
{
  v5 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[VCPVideoAnalyzer results]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unimplemented method %s", &v3, 0xCu);
  }

  return 0;
}

@end
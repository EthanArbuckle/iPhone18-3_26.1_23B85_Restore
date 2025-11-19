@interface NUPipelineEvaluationScope
@end

@implementation NUPipelineEvaluationScope

id __46___NUPipelineEvaluationScope_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 value];
  v7 = [v2 stringWithFormat:@"\n\t%@=%@", v4, v6];

  return v7;
}

id __41___NUPipelineEvaluationScope_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 value];
  v7 = [v2 stringWithFormat:@"\n\t%@:=%@", v4, objc_opt_class()];

  return v7;
}

@end
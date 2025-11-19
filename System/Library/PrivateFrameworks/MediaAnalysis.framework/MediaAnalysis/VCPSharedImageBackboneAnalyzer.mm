@interface VCPSharedImageBackboneAnalyzer
+ (id)sharedAnalyzerWithRevision:(id)a3;
- (VCPSharedImageBackboneAnalyzer)initWithRevision:(id)a3;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
@end

@implementation VCPSharedImageBackboneAnalyzer

- (VCPSharedImageBackboneAnalyzer)initWithRevision:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VCPSharedImageBackboneAnalyzer;
  v5 = [(VCPSharedImageBackboneAnalyzer *)&v11 init];
  if (v5)
  {
    v6 = [[VCPImageBackboneAnalyzer alloc] initWithRequestedAnalyses:0x1000000000000 andRevision:v4 useSharedModel:0];
    analyzer = v5->_analyzer;
    v5->_analyzer = v6;
  }

  if (v5->_analyzer)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v9;
}

+ (id)sharedAnalyzerWithRevision:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"%@-%@", v6, v3];

  v8 = +[VCPSharedInstanceManager sharedManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__VCPSharedImageBackboneAnalyzer_sharedAnalyzerWithRevision___block_invoke;
  v12[3] = &unk_1E834D0E8;
  v9 = v3;
  v13 = v9;
  v10 = [v8 sharedInstanceWithIdentifier:v7 andCreationBlock:v12];

  return v10;
}

VCPSharedImageBackboneAnalyzer *__61__VCPSharedImageBackboneAnalyzer_sharedAnalyzerWithRevision___block_invoke(uint64_t a1)
{
  v1 = [[VCPSharedImageBackboneAnalyzer alloc] initWithRevision:*(a1 + 32)];

  return v1;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v10 = a6;
  v11 = VCPSignPostLog();
  v12 = os_signpost_id_generate(v11);

  v13 = VCPSignPostLog();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "VCPSharedImageBackboneAnalyzer_Inference", "", v18, 2u);
  }

  v15 = self;
  objc_sync_enter(v15);
  v16 = [(VCPImageBackboneAnalyzer *)v15->_analyzer analyzePixelBuffer:a3 flags:a4 results:a5 cancel:v10];
  objc_sync_exit(v15);

  return v16;
}

@end
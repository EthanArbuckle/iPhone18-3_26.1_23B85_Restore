@interface VCPSharedImageBackboneAnalyzer
+ (id)sharedAnalyzerWithRevision:(id)revision;
- (VCPSharedImageBackboneAnalyzer)initWithRevision:(id)revision;
- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
@end

@implementation VCPSharedImageBackboneAnalyzer

- (VCPSharedImageBackboneAnalyzer)initWithRevision:(id)revision
{
  revisionCopy = revision;
  v11.receiver = self;
  v11.super_class = VCPSharedImageBackboneAnalyzer;
  v5 = [(VCPSharedImageBackboneAnalyzer *)&v11 init];
  if (v5)
  {
    v6 = [[VCPImageBackboneAnalyzer alloc] initWithRequestedAnalyses:0x1000000000000 andRevision:revisionCopy useSharedModel:0];
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

+ (id)sharedAnalyzerWithRevision:(id)revision
{
  revisionCopy = revision;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  revisionCopy = [v4 stringWithFormat:@"%@-%@", v6, revisionCopy];

  v8 = +[VCPSharedInstanceManager sharedManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__VCPSharedImageBackboneAnalyzer_sharedAnalyzerWithRevision___block_invoke;
  v12[3] = &unk_1E834D0E8;
  v9 = revisionCopy;
  v13 = v9;
  v10 = [v8 sharedInstanceWithIdentifier:revisionCopy andCreationBlock:v12];

  return v10;
}

VCPSharedImageBackboneAnalyzer *__61__VCPSharedImageBackboneAnalyzer_sharedAnalyzerWithRevision___block_invoke(uint64_t a1)
{
  v1 = [[VCPSharedImageBackboneAnalyzer alloc] initWithRevision:*(a1 + 32)];

  return v1;
}

- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  cancelCopy = cancel;
  v11 = VCPSignPostLog();
  v12 = os_signpost_id_generate(v11);

  v13 = VCPSignPostLog();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "VCPSharedImageBackboneAnalyzer_Inference", "", v18, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = [(VCPImageBackboneAnalyzer *)selfCopy->_analyzer analyzePixelBuffer:buffer flags:flags results:results cancel:cancelCopy];
  objc_sync_exit(selfCopy);

  return v16;
}

@end
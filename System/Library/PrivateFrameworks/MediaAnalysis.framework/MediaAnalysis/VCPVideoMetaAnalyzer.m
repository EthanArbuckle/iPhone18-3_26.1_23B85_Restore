@interface VCPVideoMetaAnalyzer
+ (id)analyzerForTrackType:(id)a3 withTransform:(CGAffineTransform *)a4 requestAnalyses:(unint64_t)a5 formatDescription:(opaqueCMFormatDescription *)a6;
@end

@implementation VCPVideoMetaAnalyzer

+ (id)analyzerForTrackType:(id)a3 withTransform:(CGAffineTransform *)a4 requestAnalyses:(unint64_t)a5 formatDescription:(opaqueCMFormatDescription *)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ([v9 isEqualToString:*MEMORY[0x1E69877B0]])
  {
    v10 = [VCPVideoMetaFaceAnalyzer alloc];
    v11 = *&a4->c;
    v17[0] = *&a4->a;
    v17[1] = v11;
    v17[2] = *&a4->tx;
    v12 = [(VCPVideoMetaFaceAnalyzer *)v10 initWithTransform:v17];
LABEL_11:
    v15 = v12;
    goto LABEL_12;
  }

  if ([v9 isEqualToString:*MEMORY[0x1E69877F0]])
  {
    v13 = off_1E834A1F8;
LABEL_5:
    v12 = objc_alloc_init(*v13);
    goto LABEL_11;
  }

  if ([v9 isEqualToString:@"mdta/com.apple.quicktime.live-photo-info"])
  {
    v14 = off_1E834A200;
LABEL_10:
    v12 = [objc_alloc(*v14) initWithRequestAnalyses:a5 formatDescription:a6];
    goto LABEL_11;
  }

  if ([v9 isEqualToString:*MEMORY[0x1E69629E0]])
  {
    v14 = off_1E834A1F0;
    goto LABEL_10;
  }

  if ([v9 isEqualToString:*MEMORY[0x1E69603B8]])
  {
    v13 = off_1E834A208;
    goto LABEL_5;
  }

  if ([v9 isEqualToString:@"mdta/com.apple.quicktime.smartstyle-info"])
  {
    v14 = off_1E834A1E8;
    goto LABEL_10;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v17[0]) = 138412290;
    *(v17 + 4) = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] [VCPVideoMetaAnalyzer] Unknown analysis type %@", v17, 0xCu);
  }

  v15 = 0;
LABEL_12:

  return v15;
}

@end
@interface CVNLPTextDecodingBeamSearchConfiguration
- (CVNLPTextDecodingBeamSearchConfiguration)initWithCommitActionBehavior:(id)a3 scoringFunction:(id)a4 beamWidth:(unint64_t)a5 pathCount:(unint64_t)a6 shouldOptimizeAlignment:(BOOL)a7 pruneProblematicMixedScriptWordPaths:(BOOL)a8 shouldApplyWordLMToLastWord:(BOOL)a9;
@end

@implementation CVNLPTextDecodingBeamSearchConfiguration

- (CVNLPTextDecodingBeamSearchConfiguration)initWithCommitActionBehavior:(id)a3 scoringFunction:(id)a4 beamWidth:(unint64_t)a5 pathCount:(unint64_t)a6 shouldOptimizeAlignment:(BOOL)a7 pruneProblematicMixedScriptWordPaths:(BOOL)a8 shouldApplyWordLMToLastWord:(BOOL)a9
{
  v15 = a4;
  v21.receiver = self;
  v21.super_class = CVNLPTextDecodingBeamSearchConfiguration;
  v16 = [(CVNLPTextDecodingConfiguration *)&v21 initWithCommitActionBehavior:a3];
  v17 = v16;
  if (v16)
  {
    v16->_beamWidth = a5;
    v16->_pathCount = a6;
    v18 = MEMORY[0x1DA741A60](v15);
    scoringFunction = v17->_scoringFunction;
    v17->_scoringFunction = v18;

    v17->_shouldOptimizeAlignment = a7;
    v17->_pruneProblematicMixedScriptWordPaths = a8;
  }

  return v17;
}

@end
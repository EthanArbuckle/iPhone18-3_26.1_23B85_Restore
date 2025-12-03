@interface CVNLPTextDecodingBeamSearchConfiguration
- (CVNLPTextDecodingBeamSearchConfiguration)initWithCommitActionBehavior:(id)behavior scoringFunction:(id)function beamWidth:(unint64_t)width pathCount:(unint64_t)count shouldOptimizeAlignment:(BOOL)alignment pruneProblematicMixedScriptWordPaths:(BOOL)paths shouldApplyWordLMToLastWord:(BOOL)word;
@end

@implementation CVNLPTextDecodingBeamSearchConfiguration

- (CVNLPTextDecodingBeamSearchConfiguration)initWithCommitActionBehavior:(id)behavior scoringFunction:(id)function beamWidth:(unint64_t)width pathCount:(unint64_t)count shouldOptimizeAlignment:(BOOL)alignment pruneProblematicMixedScriptWordPaths:(BOOL)paths shouldApplyWordLMToLastWord:(BOOL)word
{
  functionCopy = function;
  v21.receiver = self;
  v21.super_class = CVNLPTextDecodingBeamSearchConfiguration;
  v16 = [(CVNLPTextDecodingConfiguration *)&v21 initWithCommitActionBehavior:behavior];
  v17 = v16;
  if (v16)
  {
    v16->_beamWidth = width;
    v16->_pathCount = count;
    v18 = MEMORY[0x1DA741A60](functionCopy);
    scoringFunction = v17->_scoringFunction;
    v17->_scoringFunction = v18;

    v17->_shouldOptimizeAlignment = alignment;
    v17->_pruneProblematicMixedScriptWordPaths = paths;
  }

  return v17;
}

@end
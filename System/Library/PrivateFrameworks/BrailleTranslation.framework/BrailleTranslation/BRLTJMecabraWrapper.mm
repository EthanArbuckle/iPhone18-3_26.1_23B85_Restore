@interface BRLTJMecabraWrapper
- (BOOL)moveToNextCandidate;
- (BRLTJMecabraWrapper)initWithUnitTesting:(BOOL)testing;
- (void)analyzeString:(id)string;
- (void)dealloc;
- (void)learnCandidate:(id)candidate;
@end

@implementation BRLTJMecabraWrapper

- (BRLTJMecabraWrapper)initWithUnitTesting:(BOOL)testing
{
  v15.receiver = self;
  v15.super_class = BRLTJMecabraWrapper;
  v4 = [(BRLTJMecabraWrapper *)&v15 init];
  if (v4)
  {
    v5 = NSHomeDirectory();
    v6 = [v5 stringByAppendingPathComponent:@"/Library/Accessibility/brailleLearningDict_ja"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [defaultManager fileExistsAtPath:v6];

    if ((v8 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 createDirectoryAtPath:v6 withIntermediateDirectories:0 attributes:0 error:0];
    }

    if (!testing)
    {
      [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    }

    v4->_mecabra = MecabraCreateWithOptions();
    v4->_context = MecabraContextCreateMutable();
    v10 = objc_opt_new();
    candidateRefForSurface = v4->_candidateRefForSurface;
    v4->_candidateRefForSurface = v10;

    v4->_reachedEnd = v4->_mecabra == 0;
    currentAnalysis = v4->_currentAnalysis;
    v4->_currentAnalysis = &stru_2853FD1A8;

    currentSurface = v4->_currentSurface;
    v4->_currentSurface = &stru_2853FD1A8;
  }

  return v4;
}

- (void)dealloc
{
  if (self->_mecabra)
  {
    MecabraRelease();
  }

  if (self->_context)
  {
    MecabraContextRelease();
  }

  v3.receiver = self;
  v3.super_class = BRLTJMecabraWrapper;
  [(BRLTJMecabraWrapper *)&v3 dealloc];
}

- (void)analyzeString:(id)string
{
  stringCopy = string;
  if (self->_mecabra)
  {
    v9 = stringCopy;
    objc_storeStrong(&self->_string, string);
    string = self->_string;
    mecabra = self->_mecabra;
    context = self->_context;
    MecabraAnalyzeStringWithContext();
    stringCopy = v9;
  }
}

- (BOOL)moveToNextCandidate
{
  if (self->_reachedEnd)
  {
    LOBYTE(NextCandidate) = 0;
  }

  else
  {
    mecabra = self->_mecabra;
    NextCandidate = MecabraGetNextCandidate();
    if (NextCandidate)
    {
      v5 = NextCandidate;
      v6 = MecabraCandidateGetAnalysisString();
      currentAnalysis = self->_currentAnalysis;
      self->_currentAnalysis = v6;

      v8 = MecabraCandidateGetSurface();
      currentSurface = self->_currentSurface;
      self->_currentSurface = v8;

      [(NSMutableDictionary *)self->_candidateRefForSurface setObject:v5 forKeyedSubscript:self->_currentSurface];
      LOBYTE(NextCandidate) = 1;
    }

    else
    {
      self->_reachedEnd = 1;
    }
  }

  return NextCandidate;
}

- (void)learnCandidate:(id)candidate
{
  if ([(NSMutableDictionary *)self->_candidateRefForSurface objectForKey:candidate])
  {
    context = self->_context;
    MecabraContextAddInlineCandidate();
  }

  mecabra = self->_mecabra;
  v6 = self->_context;

  MEMORY[0x2821F8CA8](mecabra, v6);
}

@end
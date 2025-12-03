@interface EARAudioResult
- (EARAudioResult)initWithAudioResultMat:(id)mat vectorSize:(unint64_t)size numVectors:(unint64_t)vectors;
@end

@implementation EARAudioResult

- (EARAudioResult)initWithAudioResultMat:(id)mat vectorSize:(unint64_t)size numVectors:(unint64_t)vectors
{
  matCopy = mat;
  v13.receiver = self;
  v13.super_class = EARAudioResult;
  v9 = [(EARAudioResult *)&v13 init];
  if (v9)
  {
    v10 = [matCopy copy];
    audioResultMat = v9->_audioResultMat;
    v9->_audioResultMat = v10;

    v9->_audioResultsNumVectors = vectors;
    v9->_audioResultsVectorSize = size;
  }

  return v9;
}

@end
@interface EARAudioResult
- (EARAudioResult)initWithAudioResultMat:(id)a3 vectorSize:(unint64_t)a4 numVectors:(unint64_t)a5;
@end

@implementation EARAudioResult

- (EARAudioResult)initWithAudioResultMat:(id)a3 vectorSize:(unint64_t)a4 numVectors:(unint64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = EARAudioResult;
  v9 = [(EARAudioResult *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    audioResultMat = v9->_audioResultMat;
    v9->_audioResultMat = v10;

    v9->_audioResultsNumVectors = a5;
    v9->_audioResultsVectorSize = a4;
  }

  return v9;
}

@end
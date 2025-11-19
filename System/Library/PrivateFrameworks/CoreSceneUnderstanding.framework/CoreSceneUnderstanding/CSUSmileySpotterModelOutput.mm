@interface CSUSmileySpotterModelOutput
- (CSUSmileySpotterModelOutput)initWithOutput:(BOOL)a3 Probability:(id)a4 smileySpotterRevision:(int64_t)a5;
@end

@implementation CSUSmileySpotterModelOutput

- (CSUSmileySpotterModelOutput)initWithOutput:(BOOL)a3 Probability:(id)a4 smileySpotterRevision:(int64_t)a5
{
  v12.receiver = self;
  v12.super_class = CSUSmileySpotterModelOutput;
  v8 = [(CSUSmileySpotterModelOutput *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_generateBlobFace = a3;
    v8->_generateBlobFaceProb = a4;
    v8->_smileySpotterRevision = a5;
    v10 = v8;
  }

  return v9;
}

@end
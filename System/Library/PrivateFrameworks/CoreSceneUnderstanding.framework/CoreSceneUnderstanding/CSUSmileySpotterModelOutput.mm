@interface CSUSmileySpotterModelOutput
- (CSUSmileySpotterModelOutput)initWithOutput:(BOOL)output Probability:(id)probability smileySpotterRevision:(int64_t)revision;
@end

@implementation CSUSmileySpotterModelOutput

- (CSUSmileySpotterModelOutput)initWithOutput:(BOOL)output Probability:(id)probability smileySpotterRevision:(int64_t)revision
{
  v12.receiver = self;
  v12.super_class = CSUSmileySpotterModelOutput;
  v8 = [(CSUSmileySpotterModelOutput *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_generateBlobFace = output;
    v8->_generateBlobFaceProb = probability;
    v8->_smileySpotterRevision = revision;
    v10 = v8;
  }

  return v9;
}

@end
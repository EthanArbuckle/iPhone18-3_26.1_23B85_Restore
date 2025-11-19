@interface CLSMeaningClue
- (CLSMeaningClue)init;
@end

@implementation CLSMeaningClue

- (CLSMeaningClue)init
{
  v6.receiver = self;
  v6.super_class = CLSMeaningClue;
  v2 = [(CLSClue *)&v6 init];
  v3 = v2;
  if (v2)
  {
    relatedData = v2->_relatedData;
    v2->_relatedData = 0;
  }

  return v3;
}

@end
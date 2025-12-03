@interface ODDDataPoint
- (void)addAssociatedPresentation:(id)presentation;
- (void)addPresentation:(id)presentation order:(unint64_t)order;
@end

@implementation ODDDataPoint

- (void)addPresentation:(id)presentation order:(unint64_t)order
{
  presentationCopy = presentation;
  v7 = self->mPresentations;
  v10 = v7;
  [objc_opt_class() addConnectionToPoint:presentationCopy order:order array:&v10];
  v8 = v10;

  mPresentations = self->mPresentations;
  self->mPresentations = v8;
}

- (void)addAssociatedPresentation:(id)presentation
{
  presentationCopy = presentation;
  mPresentations = self->mPresentations;
  v8 = presentationCopy;
  if (mPresentations)
  {
    if ([(NSMutableArray *)mPresentations indexOfObjectIdenticalTo:presentationCopy]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->mPresentations addObject:v8];
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{presentationCopy, 0}];
    v7 = self->mPresentations;
    self->mPresentations = v6;
  }
}

@end
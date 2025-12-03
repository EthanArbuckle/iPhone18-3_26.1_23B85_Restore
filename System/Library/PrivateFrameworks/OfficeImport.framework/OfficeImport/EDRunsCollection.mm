@interface EDRunsCollection
- (void)addRun:(id)run baseStyle:(id)style;
@end

@implementation EDRunsCollection

- (void)addRun:(id)run baseStyle:(id)style
{
  runCopy = run;
  styleCopy = style;
  v8 = [(EDCollection *)self count];
  if (v8)
  {
    v9 = [(EDCollection *)self objectAtIndex:v8 - 1];
    font = [v9 font];

    if (!font)
    {
      goto LABEL_6;
    }
  }

  else
  {
    font = [styleCopy font];
    if (!font)
    {
LABEL_6:
      v13.receiver = self;
      v13.super_class = EDRunsCollection;
      [(EDSortedCollection *)&v13 addObject:runCopy];
      goto LABEL_7;
    }
  }

  font2 = [runCopy font];
  v12 = [font isEqual:font2];

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

@end
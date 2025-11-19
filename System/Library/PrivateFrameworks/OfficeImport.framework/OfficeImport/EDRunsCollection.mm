@interface EDRunsCollection
- (void)addRun:(id)a3 baseStyle:(id)a4;
@end

@implementation EDRunsCollection

- (void)addRun:(id)a3 baseStyle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDCollection *)self count];
  if (v8)
  {
    v9 = [(EDCollection *)self objectAtIndex:v8 - 1];
    v10 = [v9 font];

    if (!v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = [v7 font];
    if (!v10)
    {
LABEL_6:
      v13.receiver = self;
      v13.super_class = EDRunsCollection;
      [(EDSortedCollection *)&v13 addObject:v6];
      goto LABEL_7;
    }
  }

  v11 = [v6 font];
  v12 = [v10 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

@end
@interface CatalogViewControllerState
- (id)debugDescription;
@end

@implementation CatalogViewControllerState

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_showingCompletions)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p queryString = %@; showingCompletions = %@>", v5, self, self->_queryString, v7];;

  return v8;
}

@end
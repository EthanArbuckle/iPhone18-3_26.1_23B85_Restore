@interface WFContentSortDescriptor
+ (id)randomSortDescriptor;
+ (id)sortDescriptorWithProperty:(id)property ascending:(BOOL)ascending comparator:(id)comparator;
- (NSSet)containedProperties;
- (WFContentSortDescriptor)initWithProperty:(id)property ascending:(BOOL)ascending comparator:(id)comparator;
- (id)description;
@end

@implementation WFContentSortDescriptor

- (NSSet)containedProperties
{
  v2 = MEMORY[0x277CBEB98];
  property = [(WFContentSortDescriptor *)self property];
  v4 = [v2 setWithObjects:{property, 0}];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  property = [(WFContentSortDescriptor *)self property];
  if ([(WFContentSortDescriptor *)self ascending])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  comparator = [(WFContentSortDescriptor *)self comparator];
  if (comparator)
  {
    v9 = MEMORY[0x277CCACA8];
    comparator2 = [(WFContentSortDescriptor *)self comparator];
    v11 = _Block_copy(comparator2);
    v12 = [v9 stringWithFormat:@", comparator: %@", v11];
    v13 = [v3 stringWithFormat:@"<%@: %p, property: %@, ascending: %@%@>", v5, self, property, v7, v12];
  }

  else
  {
    v13 = [v3 stringWithFormat:@"<%@: %p, property: %@, ascending: %@%@>", v5, self, property, v7, &stru_282F53518];
  }

  return v13;
}

- (WFContentSortDescriptor)initWithProperty:(id)property ascending:(BOOL)ascending comparator:(id)comparator
{
  propertyCopy = property;
  comparatorCopy = comparator;
  if (propertyCopy && ([propertyCopy isSortable] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentSortDescriptor.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"!property || property.sortable"}];
  }

  v18.receiver = self;
  v18.super_class = WFContentSortDescriptor;
  v12 = [(WFContentSortDescriptor *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_property, property);
    v13->_ascending = ascending;
    v14 = [comparatorCopy copy];
    comparator = v13->_comparator;
    v13->_comparator = v14;
  }

  return v13;
}

+ (id)randomSortDescriptor
{
  if (randomSortDescriptor_onceToken != -1)
  {
    dispatch_once(&randomSortDescriptor_onceToken, &__block_literal_global_23653);
  }

  v3 = randomSortDescriptor_randomSortDescriptor;

  return v3;
}

uint64_t __47__WFContentSortDescriptor_randomSortDescriptor__block_invoke()
{
  randomSortDescriptor_randomSortDescriptor = [WFContentSortDescriptor sortDescriptorWithProperty:0 ascending:1 comparator:&__block_literal_global_3_23656];

  return MEMORY[0x2821F96F8]();
}

+ (id)sortDescriptorWithProperty:(id)property ascending:(BOOL)ascending comparator:(id)comparator
{
  ascendingCopy = ascending;
  comparatorCopy = comparator;
  propertyCopy = property;
  v10 = [[self alloc] initWithProperty:propertyCopy ascending:ascendingCopy comparator:comparatorCopy];

  return v10;
}

@end
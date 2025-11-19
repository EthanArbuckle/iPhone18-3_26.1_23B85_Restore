@interface WFContentSortDescriptor
+ (id)randomSortDescriptor;
+ (id)sortDescriptorWithProperty:(id)a3 ascending:(BOOL)a4 comparator:(id)a5;
- (NSSet)containedProperties;
- (WFContentSortDescriptor)initWithProperty:(id)a3 ascending:(BOOL)a4 comparator:(id)a5;
- (id)description;
@end

@implementation WFContentSortDescriptor

- (NSSet)containedProperties
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(WFContentSortDescriptor *)self property];
  v4 = [v2 setWithObjects:{v3, 0}];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFContentSortDescriptor *)self property];
  if ([(WFContentSortDescriptor *)self ascending])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(WFContentSortDescriptor *)self comparator];
  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(WFContentSortDescriptor *)self comparator];
    v11 = _Block_copy(v10);
    v12 = [v9 stringWithFormat:@", comparator: %@", v11];
    v13 = [v3 stringWithFormat:@"<%@: %p, property: %@, ascending: %@%@>", v5, self, v6, v7, v12];
  }

  else
  {
    v13 = [v3 stringWithFormat:@"<%@: %p, property: %@, ascending: %@%@>", v5, self, v6, v7, &stru_282F53518];
  }

  return v13;
}

- (WFContentSortDescriptor)initWithProperty:(id)a3 ascending:(BOOL)a4 comparator:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (v10 && ([v10 isSortable] & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFContentSortDescriptor.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"!property || property.sortable"}];
  }

  v18.receiver = self;
  v18.super_class = WFContentSortDescriptor;
  v12 = [(WFContentSortDescriptor *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_property, a3);
    v13->_ascending = a4;
    v14 = [v11 copy];
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

+ (id)sortDescriptorWithProperty:(id)a3 ascending:(BOOL)a4 comparator:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithProperty:v9 ascending:v5 comparator:v8];

  return v10;
}

@end
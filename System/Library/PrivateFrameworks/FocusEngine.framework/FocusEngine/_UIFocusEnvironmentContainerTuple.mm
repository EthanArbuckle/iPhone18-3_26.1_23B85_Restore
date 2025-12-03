@interface _UIFocusEnvironmentContainerTuple
+ (_UIFocusEnvironmentContainerTuple)tupleWithOwningEnvironment:(id)environment itemContainer:(id)container;
+ (_UIFocusEnvironmentContainerTuple)tupleWithRequiredContainerFromEnvironment:(id)environment;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEnvironmentContainerTuple:(id)tuple;
- (_UIFocusEnvironmentContainerTuple)initWithOwningEnvironment:(id)environment itemContainer:(id)container;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIFocusEnvironmentContainerTuple

- (_UIFocusEnvironmentContainerTuple)initWithOwningEnvironment:(id)environment itemContainer:(id)container
{
  environmentCopy = environment;
  containerCopy = container;
  v10 = containerCopy;
  if (environmentCopy)
  {
    if (containerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"itemContainer != nil"}];

LABEL_3:
  focusItemContainer = [environmentCopy focusItemContainer];

  if (focusItemContainer != v10)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment.focusItemContainer == itemContainer"}];
  }

  v18.receiver = self;
  v18.super_class = _UIFocusEnvironmentContainerTuple;
  v12 = [(_UIFocusEnvironmentContainerTuple *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_owningEnvironment, environment);
    objc_storeStrong(&v13->_itemContainer, container);
    v13->_isScrollableContainer = _UIFocusItemContainerIsScrollableContainer(v10);
  }

  return v13;
}

+ (_UIFocusEnvironmentContainerTuple)tupleWithOwningEnvironment:(id)environment itemContainer:(id)container
{
  containerCopy = container;
  environmentCopy = environment;
  v8 = [[self alloc] initWithOwningEnvironment:environmentCopy itemContainer:containerCopy];

  return v8;
}

+ (_UIFocusEnvironmentContainerTuple)tupleWithRequiredContainerFromEnvironment:(id)environment
{
  environmentCopy = environment;
  focusItemContainer = [environmentCopy focusItemContainer];
  v6 = [self tupleWithOwningEnvironment:environmentCopy itemContainer:focusItemContainer];

  return v6;
}

- (BOOL)isEqualToEnvironmentContainerTuple:(id)tuple
{
  v43 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  owningEnvironment = self->_owningEnvironment;
  itemContainer = self->_itemContainer;
  v7 = tupleCopy[2];
  v8 = tupleCopy[3];
  v9 = logger();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10 && itemContainer == v8 && owningEnvironment != v7)
  {
    v15 = logger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v35 = v7;
      v36 = v8;
      v33 = owningEnvironment;
      v34 = itemContainer;
      itemContainer = [(_UIFocusEnvironmentContainerTuple *)self itemContainer];
      if (itemContainer)
      {
        v17 = MEMORY[0x277CCACA8];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v17 stringWithFormat:@"<%@: %p>", v19, itemContainer];
      }

      else
      {
        v20 = @"(nil)";
      }

      v21 = v20;
      owningEnvironment = [(_UIFocusEnvironmentContainerTuple *)self owningEnvironment];
      if (owningEnvironment)
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v23 stringWithFormat:@"<%@: %p>", v25, owningEnvironment];
      }

      else
      {
        v26 = @"(nil)";
      }

      v27 = v26;
      owningEnvironment2 = [tupleCopy owningEnvironment];
      if (owningEnvironment2)
      {
        v29 = MEMORY[0x277CCACA8];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [v29 stringWithFormat:@"<%@: %p>", v31, owningEnvironment2];
      }

      else
      {
        v32 = @"(nil)";
      }

      *buf = 138412802;
      v38 = v21;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = v32;
      _os_log_impl(&dword_24B885000, v15, OS_LOG_TYPE_INFO, "Warning: encountered a single UIFocusItemContainer: %@ yielded by two mismatched owning UIFocusEnvironments: %@ and %@. UIFocusItemContainer should be 1:1 with its owning environment.", buf, 0x20u);

      owningEnvironment = v33;
      itemContainer = v34;
      v7 = v35;
      v8 = v36;
    }
  }

  v12 = owningEnvironment == v7 && itemContainer == v8;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()) && [(_UIFocusEnvironmentContainerTuple *)self isEqualToEnvironmentContainerTuple:equalCopy];

  return v6;
}

- (unint64_t)hash
{
  owningEnvironment = [(_UIFocusEnvironmentContainerTuple *)self owningEnvironment];
  v4 = [owningEnvironment hash];
  itemContainer = [(_UIFocusEnvironmentContainerTuple *)self itemContainer];
  v6 = [itemContainer hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p owningEnvironment: %@; itemContainer: %@>", v5, self, self->_owningEnvironment, self->_itemContainer];;

  return v6;
}

@end